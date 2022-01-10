// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/user_fragment.data.gql.dart'
    as _i2;

part 'update_my_profile.data.gql.g.dart';

abstract class GupdateCurrentUserData
    implements Built<GupdateCurrentUserData, GupdateCurrentUserDataBuilder> {
  GupdateCurrentUserData._();

  factory GupdateCurrentUserData(
          [Function(GupdateCurrentUserDataBuilder b) updates]) =
      _$GupdateCurrentUserData;

  static void _initializeBuilder(GupdateCurrentUserDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GupdateCurrentUserData_updateMyProfile? get updateMyProfile;
  static Serializer<GupdateCurrentUserData> get serializer =>
      _$gupdateCurrentUserDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GupdateCurrentUserData.serializer, this)
          as Map<String, dynamic>);
  static GupdateCurrentUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GupdateCurrentUserData.serializer, json);
}

abstract class GupdateCurrentUserData_updateMyProfile
    implements
        Built<GupdateCurrentUserData_updateMyProfile,
            GupdateCurrentUserData_updateMyProfileBuilder>,
        _i2.GUserFragment {
  GupdateCurrentUserData_updateMyProfile._();

  factory GupdateCurrentUserData_updateMyProfile(
          [Function(GupdateCurrentUserData_updateMyProfileBuilder b) updates]) =
      _$GupdateCurrentUserData_updateMyProfile;

  static void _initializeBuilder(
          GupdateCurrentUserData_updateMyProfileBuilder b) =>
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
  static Serializer<GupdateCurrentUserData_updateMyProfile> get serializer =>
      _$gupdateCurrentUserDataUpdateMyProfileSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GupdateCurrentUserData_updateMyProfile.serializer, this)
      as Map<String, dynamic>);
  static GupdateCurrentUserData_updateMyProfile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GupdateCurrentUserData_updateMyProfile.serializer, json);
}
