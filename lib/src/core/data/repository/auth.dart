import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/adapters/auth.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/network/service/auth.dart';
import 'package:toto_mobile/src/core/data/storage/user.dart';
import 'package:toto_mobile/src/core/domain/entities/auth.dart';
import 'package:toto_mobile/src/injection/injection.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/utils/logger.dart';

import 'auth_storage/auth_storage.dart';

abstract class AuthRepository {
  Future<NetworkResult> phoneAuth(String telephone, String code);

  Future<NetworkResult> requestPhoneCodeAuth(String telephone);

  Future<NetworkResult> requestPhoneCodeRegister(String telephone, String name);

  Future<int> clear();
}

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final UserStorage _userStorage;
  final AuthApi _authApi;
  final AuthStorageRepository _authStorageRep =
      getIt<AuthStorageWatcherRepository>();

  AuthRepositoryImpl(this._authApi, this._userStorage);

  @override
  Future<NetworkResult> phoneAuth(String telephone, String code) async {
    try {
      final authDate = await _authApi.phoneAuth(telephone, code);
      if (authDate.phoneAuth.access_token!.isNotEmpty) {
        saveDataInStorage(authDate.phoneAuth.toPhoneAuthDto);
        return NetworkResult.success;
      } else {
        return NetworkResult.error;
      }
    } on GraphQLError catch (exception) {
      Logger.logger('phoneAuth', '$exception');
      switch (exception.message) {
        case TotoDictionary.serverIncorrectValidations:
          return NetworkResult.incorrectUser;
        default:
          return NetworkResult.error;
      }
    } catch (exception) {
      Logger.logger('phoneAuth', '$exception');
      return NetworkResult.networkFailure;
    }
  }

  @override
  Future<NetworkResult> requestPhoneCodeAuth(String telephone) async {
    try {
      final res = await _authApi.requestPhoneCodeAuth(telephone);
      if (res.requestPhoneCodeAuth.isNotEmpty) {
        return NetworkResult.success;
      } else {
        Logger.logger('requestPhoneCodeAuth', 'Request code is Empty');
        return NetworkResult.error;
      }
    } on GraphQLError catch (exception) {
      Logger.logger('requestPhoneCodeAuthGraphQLError', '$exception');
      switch (exception.message) {
        case TotoDictionary.serverPhoneValidationError:
          return NetworkResult.wrongTelephoneFormat;
        case TotoDictionary.serverIncorrectValidations:
          return NetworkResult.incorrectUser;
        default:
          return NetworkResult.error;
      }
    } catch (exception) {
      Logger.logger('requestPhoneCodeAuth', '$exception');
      return NetworkResult.networkFailure;
    }
  }

  @override
  Future<NetworkResult> requestPhoneCodeRegister(
      String telephone, String name) async {
    try {
      final res = await _authApi.requestPhoneCodeRegister(telephone, name);
      if (res != null && res.requestPhoneCodeRegister.isNotEmpty) {
        return NetworkResult.success;
      } else {
        Logger.logger('requestPhoneCodeRegister', 'requestPhoneCodeRegister');
        return NetworkResult.error;
      }
    } on GraphQLError catch (exception) {
      Logger.logger('requestPhoneCodeRegisterGraphQLError', '$exception');
      switch (exception.message) {
        case TotoDictionary.serverPhoneValidationError:
          return NetworkResult.wrongTelephoneFormat;
        case TotoDictionary.serverIncorrectValidations:
          return NetworkResult.incorrectUser;
        case TotoDictionary.serverUserAlreadyExist:
          return NetworkResult.userExist;
        default:
          return NetworkResult.error;
      }
    } catch (exception) {
      Logger.logger('requestPhoneCodeRegister', '$exception');
      return NetworkResult.networkFailure;
    }
  }

  void saveDataInStorage(PhoneAuthDto phoneAuthDto) {
    var time = (phoneAuthDto.expiresIn != null)
        ? ((DateTime.now().millisecondsSinceEpoch / 1000).round() +
            phoneAuthDto.expiresIn!)
        : null;
    _userStorage.isGuest = false;
    _userStorage.payload = TokenPayload(phoneAuthDto.accessToken,
        phoneAuthDto.refreshToken, time, phoneAuthDto.tokenType);
    _authStorageRep.notify();
  }

  @override
  Future<int> clear() async {
    var result = await _userStorage.clear();
    Logger.logger('clearAuthStorageRep', result.toString());
    _authStorageRep.notify();
    return result;
  }
}
