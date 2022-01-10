// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/user_fragment.data.gql.dart'
    as _i2;

part 'auth_guest.data.gql.g.dart';

abstract class GauthGuestData
    implements Built<GauthGuestData, GauthGuestDataBuilder> {
  GauthGuestData._();

  factory GauthGuestData([Function(GauthGuestDataBuilder b) updates]) =
      _$GauthGuestData;

  static void _initializeBuilder(GauthGuestDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GauthGuestData_authGuest get authGuest;
  static Serializer<GauthGuestData> get serializer =>
      _$gauthGuestDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GauthGuestData.serializer, this)
          as Map<String, dynamic>);
  static GauthGuestData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GauthGuestData.serializer, json);
}

abstract class GauthGuestData_authGuest
    implements
        Built<GauthGuestData_authGuest, GauthGuestData_authGuestBuilder> {
  GauthGuestData_authGuest._();

  factory GauthGuestData_authGuest(
          [Function(GauthGuestData_authGuestBuilder b) updates]) =
      _$GauthGuestData_authGuest;

  static void _initializeBuilder(GauthGuestData_authGuestBuilder b) =>
      b..G__typename = 'AuthPayload';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get access_token;
  String? get refresh_token;
  String? get token_type;
  int? get expires_in;
  GauthGuestData_authGuest_user? get user;
  static Serializer<GauthGuestData_authGuest> get serializer =>
      _$gauthGuestDataAuthGuestSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GauthGuestData_authGuest.serializer, this)
          as Map<String, dynamic>);
  static GauthGuestData_authGuest? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GauthGuestData_authGuest.serializer, json);
}

abstract class GauthGuestData_authGuest_user
    implements
        Built<GauthGuestData_authGuest_user,
            GauthGuestData_authGuest_userBuilder>,
        _i2.GUserFragment {
  GauthGuestData_authGuest_user._();

  factory GauthGuestData_authGuest_user(
          [Function(GauthGuestData_authGuest_userBuilder b) updates]) =
      _$GauthGuestData_authGuest_user;

  static void _initializeBuilder(GauthGuestData_authGuest_userBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get surname;
  String? get middle_name;
  String? get email;
  String? get telephone;
  bool? get active;
  _i3.GDateTime? get telephone_verified_at;
  _i3.GDateTime? get email_verified_at;
  _i3.GDateTime get created_at;
  _i3.GDateTime get updated_at;
  bool? get is_guest;
  _i3.GDateTime? get last_active_at;
  double? get bonus_balance;
  String? get date_of_birth;
  String? get customer_id;
  static Serializer<GauthGuestData_authGuest_user> get serializer =>
      _$gauthGuestDataAuthGuestUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GauthGuestData_authGuest_user.serializer, this) as Map<String, dynamic>);
  static GauthGuestData_authGuest_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GauthGuestData_authGuest_user.serializer, json);
}
