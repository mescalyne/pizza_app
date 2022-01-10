// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'user_fragment.data.gql.g.dart';

abstract class GUserFragment {
  String get G__typename;
  String get id;
  String? get name;
  String? get surname;
  String? get middle_name;
  String? get email;
  String? get telephone;
  bool? get active;
  _i1.GDateTime? get telephone_verified_at;
  _i1.GDateTime? get email_verified_at;
  _i1.GDateTime get created_at;
  _i1.GDateTime get updated_at;
  bool? get is_guest;
  _i1.GDateTime? get last_active_at;
  double? get bonus_balance;
  String? get date_of_birth;
  String? get customer_id;
  Map<String, dynamic> toJson();
}

abstract class GUserFragmentData
    implements
        Built<GUserFragmentData, GUserFragmentDataBuilder>,
        GUserFragment {
  GUserFragmentData._();

  factory GUserFragmentData([Function(GUserFragmentDataBuilder b) updates]) =
      _$GUserFragmentData;

  static void _initializeBuilder(GUserFragmentDataBuilder b) =>
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
  _i1.GDateTime? get telephone_verified_at;
  _i1.GDateTime? get email_verified_at;
  _i1.GDateTime get created_at;
  _i1.GDateTime get updated_at;
  bool? get is_guest;
  _i1.GDateTime? get last_active_at;
  double? get bonus_balance;
  String? get date_of_birth;
  String? get customer_id;
  static Serializer<GUserFragmentData> get serializer =>
      _$gUserFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUserFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GUserFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUserFragmentData.serializer, json);
}
