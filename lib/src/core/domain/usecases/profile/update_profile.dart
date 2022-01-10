import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/repository/current_user.dart';
import 'package:toto_mobile/src/core/domain/entities/user.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class UpdateProfileUseCase {
  Future<Result<UserDto>?> call(String name, String? email, String? dateOfBirth);
}

@Injectable(as: UpdateProfileUseCase)
class UpdateProfileUseCaseImpl extends UpdateProfileUseCase {
  final CurrentUserRepository repository;

  UpdateProfileUseCaseImpl(this.repository);

  @override
  Future<Result<UserDto>?> call(String name, String? email, String? dateOfBirth) {
    return repository.updateProfile(name, email, dateOfBirth);
  }
}
