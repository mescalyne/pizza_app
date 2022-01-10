import 'package:toto_mobile/src/core/data/network/models/user_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/user.dart';
import 'package:toto_mobile/src/utils/converter.dart';

typedef User = GUserFragment;

extension UserAdapter on User {
  UserDto get toUserDto {
    return UserDto(
      id: int.parse(id),
      name: name,
      surname: surname,
      middleName: middle_name,
      email: email,
      telephone: telephone,
      active: active ?? false,
      telephoneVerifiedAt: telephone_verified_at.toDateTimeOrNull,
      emailVerifiedAt: email_verified_at.toDateTimeOrNull,
      createdAt: created_at.toDateTimeOrNull,
      updatedAt: updated_at.toDateTimeOrNull,
      isGuest: is_guest,
      lastActiveAt: last_active_at.toDateTimeOrNull,
      bonusBalance: bonus_balance,
      dateOfBirth: date_of_birth,
      customerId:customer_id,
    );
  }
}
