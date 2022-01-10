// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/user_fragment.data.gql.dart'
    as _i2;

part 'get_user.data.gql.g.dart';

abstract class GGetUserData
    implements Built<GGetUserData, GGetUserDataBuilder> {
  GGetUserData._();

  factory GGetUserData([Function(GGetUserDataBuilder b) updates]) =
      _$GGetUserData;

  static void _initializeBuilder(GGetUserDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetUserData_user? get user;
  static Serializer<GGetUserData> get serializer => _$gGetUserDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserData.serializer, this)
          as Map<String, dynamic>);
  static GGetUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUserData.serializer, json);
}

abstract class GGetUserData_user
    implements
        Built<GGetUserData_user, GGetUserData_userBuilder>,
        _i2.GUserFragment {
  GGetUserData_user._();

  factory GGetUserData_user([Function(GGetUserData_userBuilder b) updates]) =
      _$GGetUserData_user;

  static void _initializeBuilder(GGetUserData_userBuilder b) =>
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
  static Serializer<GGetUserData_user> get serializer =>
      _$gGetUserDataUserSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUserData_user.serializer, this)
          as Map<String, dynamic>);
  static GGetUserData_user? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUserData_user.serializer, json);
}
