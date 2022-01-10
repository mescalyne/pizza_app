

class UserDto {
  final int id;
  final String? name;
  final String? surname;
  final String? middleName;
  final String? email;
  final String? telephone;
  final bool active;
  final DateTime? telephoneVerifiedAt;
  final DateTime? emailVerifiedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? lastActiveAt;
  final double? bonusBalance;
  final String? dateOfBirth;
  final String? customerId;
  final bool? isGuest;

  UserDto({
    required this.id,
    required this.name,
    required this.surname,
    required this.middleName,
    required this.email,
    required this.telephone,
    required this.active,
    required this.telephoneVerifiedAt,
    required this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.lastActiveAt,
    required this.bonusBalance,
    required this.dateOfBirth,
    required this.customerId,
    required this.isGuest,
  });
}
