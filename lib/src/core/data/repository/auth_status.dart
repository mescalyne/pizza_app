import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/storage/user.dart';
import 'auth_storage/auth_storage.dart';

abstract class AuthStateRepository {
  Stream<bool?> get isGuest;
}

@Injectable(as: AuthStateRepository)
class AuthStateRepositoryImpl extends AuthStateRepository {
  final AuthStorageWatcherRepository _authStorage;

  AuthStateRepositoryImpl(this._authStorage);

  @override
  Stream<bool?> get isGuest =>
      _authStorage.watch().map((event) => event.getAuthStatus());
}

extension on UserStorage {
  bool? getAuthStatus() {
    return this.isGuest;
  }
}
