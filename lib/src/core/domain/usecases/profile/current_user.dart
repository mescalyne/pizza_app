import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/repository/auth.dart';
import 'package:toto_mobile/src/core/data/repository/auth_status.dart';
import 'package:toto_mobile/src/core/data/repository/current_user.dart';
import 'package:toto_mobile/src/core/domain/entities/user.dart';
import 'package:toto_mobile/src/utils/result.dart';


abstract class CurrentUserUseCase {
  Future<Result<UserDto>?> getUser();
  Future<int> clearUserData();
  Stream<bool?> watch();
}

@Injectable(as: CurrentUserUseCase)
class CurrentUserUseCaseImpl extends CurrentUserUseCase {
  final CurrentUserRepository _repository;
  final AuthRepository _authRepository;
  final AuthStateRepository _authStateRepository;

  CurrentUserUseCaseImpl(this._repository, this._authRepository, this._authStateRepository);

  @override
  Future<Result<UserDto>?> getUser() async {
    return await _repository.getUser();
  }

  @override
  Future<int> clearUserData() {
    return _authRepository.clear();
  }

  @override
  Stream<bool?> watch() async* {
    yield* _authStateRepository.isGuest;
  }
}
