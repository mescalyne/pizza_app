import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/repository/auth.dart';

abstract class AuthPhoneUseCase {
  Future<NetworkResult> call(String telephone, String code);
  Future<NetworkResult> requestPhoneCodeRegister(String telephone, String name);
}

@Injectable(as: AuthPhoneUseCase)
class AuthPhoneUseCaseImpl extends AuthPhoneUseCase {
  final AuthRepository _authRepository;

  AuthPhoneUseCaseImpl(this._authRepository);

  @override
  Future<NetworkResult> call(String telephone, String code) {
    return _authRepository.phoneAuth(telephone, code);
  }

  @override
  Future<NetworkResult> requestPhoneCodeRegister(String telephone, String name) {
    return _authRepository.requestPhoneCodeRegister(telephone, name);
  }
}