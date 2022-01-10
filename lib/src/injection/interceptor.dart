import 'package:graphql/client.dart';
import 'package:toto_mobile/src/core/data/adapters/auth.dart';
import 'package:toto_mobile/src/core/data/adapters/refresh_token.dart';
import 'package:toto_mobile/src/core/data/network/service/auth.dart';
import 'package:toto_mobile/src/core/data/network/service/refresh_token.dart';
import 'package:toto_mobile/src/core/data/repository/auth_storage/auth_storage.dart';
import 'package:toto_mobile/src/core/data/storage/user.dart';
import 'package:toto_mobile/src/core/domain/entities/refresh_token.dart';

import 'injection.dart';

class Interceptor {

  final AuthStorageRepository _authStorageRep = getIt<AuthStorageWatcherRepository>();

  Future configureNetworkClient({required String baseUrl}) async {
    final httpLink = HttpLink(baseUrl);
    final authStorage = getIt<UserStorage>();

    final authLink = AuthLink(
      getToken: () async {
        if ((authStorage.payload != null) &&
            (authStorage.payload!.token != null)) {
          if (tokenIsExpired(authStorage) &&
              (authStorage.payload!.refreshToken != null)) {
            try {
              var refreshTokenResult = await RefreshApi()
                  .refreshToken(authStorage.payload!.refreshToken!, baseUrl);
              var refreshTokenDto =
                  refreshTokenResult!.refreshToken.toRefreshDto;
              updateHiveToken(refreshTokenDto, authStorage);
              return '${refreshTokenDto.tokenType} ${refreshTokenDto.accessToken}';
            } catch (e) {
              var guestAuthResult = await authGuest(baseUrl, authStorage);
              return 'Bearer ${guestAuthResult?.accessToken}';
            }
          }
          return 'Bearer ${authStorage.payload!.token}';
        }
        var guestAuthResult = await authGuest(baseUrl, authStorage);
        return 'Bearer ${guestAuthResult?.accessToken}';
      },
    );
    final cacheStore = await HiveStore.open();

    final client = GraphQLClient(
      cache: GraphQLCache(store: cacheStore),
      link: Link.from([
        authLink,
        httpLink,
      ]),
    );

    getIt.registerLazySingleton<GraphQLClient>(() => client);
  }

  Future<RefreshTokenDto?> authGuest(
      String baseUrl, UserStorage storage) async {
    var guestAuthResult = await AuthGuestApi().guestAuth(baseUrl);
    var authDto = guestAuthResult?.authGuest.toAuthDto;
    if (authDto != null) {
      storage.isGuest = true;
      var tokenPayload = RefreshTokenDto(
          expiresTime: authDto.expiresIn,
          accessToken: authDto.accessToken,
          refreshToken: authDto.refreshToken,
          tokenType: authDto.tokenType);
      updateHiveToken(tokenPayload, storage);
      _authStorageRep.notify();
      return tokenPayload;
    } else {
      return null;
    }
  }

  void updateHiveToken(RefreshTokenDto tokenDto, UserStorage storage) {
    var currentTime = (DateTime.now().millisecondsSinceEpoch / 1000).round();
    if (tokenDto.expiresTime != null) {
      var payload = TokenPayload(tokenDto.accessToken, tokenDto.refreshToken,
          currentTime + tokenDto.expiresTime!, tokenDto.tokenType);
      storage.payload = payload;
    }
  }

  bool tokenIsExpired(UserStorage storage) {
    if ((storage.payload != null) && (storage.payload!.expiresTime != null)) {
      var tokenTime = storage.payload!.expiresTime!;
      var currentTime = (DateTime.now().millisecondsSinceEpoch / 1000).round();
      if (currentTime >= tokenTime) {
        return true;
      }
    }
    return false;
  }
}
