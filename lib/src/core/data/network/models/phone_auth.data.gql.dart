// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/user_fragment.data.gql.dart'
    as _i2;

part 'phone_auth.data.gql.g.dart';

abstract class GphoneAuthData
    implements Built<GphoneAuthData, GphoneAuthDataBuilder> {
  GphoneAuthData._();

  factory GphoneAuthData([Function(GphoneAuthDataBuilder b) updates]) =
      _$GphoneAuthData;

  static void _initializeBuilder(GphoneAuthDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GphoneAuthData_phoneAuth get phoneAuth;
  static Serializer<GphoneAuthData> get serializer =>
      _$gphoneAuthDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GphoneAuthData.serializer, this)
          as Map<String, dynamic>);
  static GphoneAuthData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GphoneAuthData.serializer, json);
}

abstract class GphoneAuthData_phoneAuth
    implements
        Built<GphoneAuthData_phoneAuth, GphoneAuthData_phoneAuthBuilder> {
  GphoneAuthData_phoneAuth._();

  factory GphoneAuthData_phoneAuth(
          [Function(GphoneAuthData_phoneAuthBuilder b) updates]) =
      _$GphoneAuthData_phoneAuth;

  static void _initializeBuilder(GphoneAuthData_phoneAuthBuilder b) =>
      b..G__typename = 'AuthPayload';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get access_token;
  String? get refresh_token;
  String? get token_type;
  int? get expires_in;
  GphoneAuthData_phoneAuth_user? get user;
  static Serializer<GphoneAuthData_phoneAuth> get serializer =>
      _$gphoneAuthDataPhoneAuthSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GphoneAuthData_phoneAuth.serializer, this)
          as Map<String, dynamic>);
  static GphoneAuthData_phoneAuth? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GphoneAuthData_phoneAuth.serializer, json);
}

abstract class GphoneAuthData_phoneAuth_user
    implements
        Built<GphoneAuthData_phoneAuth_user,
            GphoneAuthData_phoneAuth_userBuilder>,
        _i2.GUserFragment {
  GphoneAuthData_phoneAuth_user._();

  factory GphoneAuthData_phoneAuth_user(
          [Function(GphoneAuthData_phoneAuth_userBuilder b) updates]) =
      _$GphoneAuthData_phoneAuth_user;

  static void _initializeBuilder(GphoneAuthData_phoneAuth_userBuilder b) =>
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
  static Serializer<GphoneAuthData_phoneAuth_user> get serializer =>
      _$gphoneAuthDataPhoneAuthUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GphoneAuthData_phoneAuth_user.serializer, this) as Map<String, dynamic>);
  static GphoneAuthData_phoneAuth_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GphoneAuthData_phoneAuth_user.serializer, json);
}
