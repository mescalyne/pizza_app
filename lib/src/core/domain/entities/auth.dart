import 'package:toto_mobile/src/core/domain/entities/user.dart';

class PhoneAuthDto {
  final String? accessToken;
  final String? refreshToken;
  final String? tokenType;
  final int? expiresIn;
  final UserDto? user;

  PhoneAuthDto(
      {required this.accessToken,
        required this.refreshToken,
        required this.tokenType,
        required this.expiresIn,
        required this.user});
}