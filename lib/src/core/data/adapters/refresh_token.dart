import 'package:toto_mobile/src/core/data/network/models/refresh_token.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/refresh_token.dart';

typedef Refresh = GrefreshTokenData_refreshToken;

extension RefreshAdapter on Refresh {
  RefreshTokenDto get toRefreshDto {
    return RefreshTokenDto(
      expiresTime: expires_in,
      accessToken: access_token,
      refreshToken: refresh_token,
      tokenType: token_type,
    );
  }
}