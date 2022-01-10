import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:toto_mobile/src/core/data/storage/user.dart';

abstract class AuthStorageRepository {
  Stream<UserStorage> watch();
  void notify();
}

@LazySingleton()
class AuthStorageWatcherRepository implements AuthStorageRepository {
  final UserStorage _authStorageHive;
  late StreamController<UserStorage> _streamController;

  AuthStorageWatcherRepository(this._authStorageHive) {
    _streamController = BehaviorSubject<UserStorage>.seeded(_authStorageHive);
  }

  @override
  Stream<UserStorage> watch() => _streamController.stream;

  @override
  notify() => _streamController.add(_authStorageHive);
}
