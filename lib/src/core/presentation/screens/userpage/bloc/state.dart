import 'package:toto_mobile/src/core/domain/entities/user.dart';

abstract class UserpageState {}

class EmptyState extends UserpageState {}

class HomeInitial extends UserpageState {
  final UserDto loadedUser;
  HomeInitial({required this.loadedUser});
}
