import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/repository/auth.dart';

abstract class RequestPhoneCodeUseCase {
  Future<NetworkResult> call(String telephone);
}

@Injectable(as: RequestPhoneCodeUseCase)
class RequestPhoneCodeUseCaseImpl extends RequestPhoneCodeUseCase {
  final AuthRepository _authRepository;

  RequestPhoneCodeUseCaseImpl(this._authRepository);

  @override
  Future<NetworkResult> call(String telephone) {
    return _authRepository.requestPhoneCodeAuth(telephone);
  }
}
