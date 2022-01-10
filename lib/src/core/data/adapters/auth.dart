import 'package:toto_mobile/src/core/data/network/models/phone_auth.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/auth_guest.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/auth.dart';
import 'user.dart';

typedef PhoneAuth = GphoneAuthData_phoneAuth;
typedef GuestAuth = GauthGuestData_authGuest;

extension PhoneAuthAdapter on PhoneAuth {
  PhoneAuthDto get toPhoneAuthDto {
    return PhoneAuthDto(
      accessToken: access_token,
      refreshToken: refresh_token,
      tokenType: token_type,
      user: user!.toUserDto,
      expiresIn: expires_in,
    );
  }
}

extension GuestAuthAdapter on GuestAuth {
  PhoneAuthDto get toAuthDto {
    return PhoneAuthDto(accessToken: access_token,
        refreshToken: refresh_token,
        tokenType: token_type,
        expiresIn: expires_in,
        user: user?.toUserDto);
  }
}

