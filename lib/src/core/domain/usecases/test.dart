import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/repository/test.dart';

abstract class TestUseCase {
  Future call(int id);
}

@Injectable(as: TestUseCase)
class TestUseCaseImpl extends TestUseCase {
  final TestRepository _repository;

  TestUseCaseImpl(this._repository);

  @override
  Future call(int id) {
    return _repository.getUser(id);
  }
}
