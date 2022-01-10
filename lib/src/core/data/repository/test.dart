import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/service/get_user.dart';
import 'package:toto_mobile/src/core/domain/entities/user.dart';
import 'package:toto_mobile/src/core/data/adapters/user.dart';

abstract class TestRepository {
  Future<UserDto?> getUser(int id);
}

@Injectable(as: TestRepository)
class TestRepositoryImpl extends TestRepository {
  final GetUserApi getUserApi;

  TestRepositoryImpl(this.getUserApi);

  @override
  Future<UserDto?> getUser(int id) async {
    final gotUser = await getUserApi.getUser(id);
    if (gotUser != null) return gotUser.user!.toUserDto;
  }
}
