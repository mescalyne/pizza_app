import 'dart:async';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/adapters/user.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/network/service/current_user.dart';
import 'package:toto_mobile/src/core/data/network/service/update_my_profile.dart';
import 'package:toto_mobile/src/core/domain/entities/user.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class CurrentUserRepository {
  Future<Result<UserDto>> getUser();
  Future<Result<UserDto>> updateProfile(
      String name, String? email, String? dateOfBirth);
}

@Injectable(as: CurrentUserRepository)
class CurrentUserRepositoryImpl extends CurrentUserRepository {
  final GetCurrentUserApi getCurrentUserApi;
  final UpdateMyProfileApi updateMyProfileApi;

  CurrentUserRepositoryImpl(
    this.getCurrentUserApi,
    this.updateMyProfileApi,
  );

  @override
  Future<Result<UserDto>> getUser() async {
    try {
      final res = await getCurrentUserApi.getUser();
      if ((res != null) && (res.me != null)) {
        return Result.success(res.me!.toUserDto);
      }
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<UserDto>> updateProfile(
      String name, String? email, String? dateOfBirth) async {
    final updatedProfile =
        await updateMyProfileApi.updateMyProfile(name, email, dateOfBirth);
    try {
      if (updatedProfile != null) {
        return Result.success(updatedProfile.updateMyProfile!.toUserDto);
      }
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }
}
