// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/user_fragment.data.gql.dart'
    as _i2;

part 'me.data.gql.g.dart';

abstract class GGetCurrentUserData
    implements Built<GGetCurrentUserData, GGetCurrentUserDataBuilder> {
  GGetCurrentUserData._();

  factory GGetCurrentUserData(
      [Function(GGetCurrentUserDataBuilder b) updates]) = _$GGetCurrentUserData;

  static void _initializeBuilder(GGetCurrentUserDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetCurrentUserData_me? get me;
  static Serializer<GGetCurrentUserData> get serializer =>
      _$gGetCurrentUserDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetCurrentUserData.serializer, this)
          as Map<String, dynamic>);
  static GGetCurrentUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetCurrentUserData.serializer, json);
}

abstract class GGetCurrentUserData_me
    implements
        Built<GGetCurrentUserData_me, GGetCurrentUserData_meBuilder>,
        _i2.GUserFragment {
  GGetCurrentUserData_me._();

  factory GGetCurrentUserData_me(
          [Function(GGetCurrentUserData_meBuilder b) updates]) =
      _$GGetCurrentUserData_me;

  static void _initializeBuilder(GGetCurrentUserData_meBuilder b) =>
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
  static Serializer<GGetCurrentUserData_me> get serializer =>
      _$gGetCurrentUserDataMeSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetCurrentUserData_me.serializer, this)
          as Map<String, dynamic>);
  static GGetCurrentUserData_me? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetCurrentUserData_me.serializer, json);
}
