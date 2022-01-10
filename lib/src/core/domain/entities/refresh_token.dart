
class RefreshTokenDto {
  final int? expiresTime;
  final String? accessToken;
  final String? refreshToken;
  final String? tokenType;

  RefreshTokenDto({
    required this.expiresTime,
    required this.accessToken,
    required this.refreshToken,
    required this.tokenType,
  });
}