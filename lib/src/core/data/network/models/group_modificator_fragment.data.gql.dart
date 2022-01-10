// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.data.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;

part 'group_modificator_fragment.data.gql.g.dart';

abstract class GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GGroupModificatorFragment_childModifiers>? get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GGroupModificatorFragment_childModifiers
    implements _i1.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GGroupModificatorFragmentData
    implements
        Built<GGroupModificatorFragmentData,
            GGroupModificatorFragmentDataBuilder>,
        GGroupModificatorFragment {
  GGroupModificatorFragmentData._();

  factory GGroupModificatorFragmentData(
          [Function(GGroupModificatorFragmentDataBuilder b) updates]) =
      _$GGroupModificatorFragmentData;

  static void _initializeBuilder(GGroupModificatorFragmentDataBuilder b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GGroupModificatorFragmentData_childModifiers>? get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GGroupModificatorFragmentData> get serializer =>
      _$gGroupModificatorFragmentDataSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GGroupModificatorFragmentData.serializer, this) as Map<String, dynamic>);
  static GGroupModificatorFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GGroupModificatorFragmentData.serializer, json);
}

abstract class GGroupModificatorFragmentData_childModifiers
    implements
        Built<GGroupModificatorFragmentData_childModifiers,
            GGroupModificatorFragmentData_childModifiersBuilder>,
        GGroupModificatorFragment_childModifiers,
        _i1.GModificatorFragment {
  GGroupModificatorFragmentData_childModifiers._();

  factory GGroupModificatorFragmentData_childModifiers(
      [Function(GGroupModificatorFragmentData_childModifiersBuilder b)
          updates]) = _$GGroupModificatorFragmentData_childModifiers;

  static void _initializeBuilder(
          GGroupModificatorFragmentData_childModifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GGroupModificatorFragmentData_childModifiers>
      get serializer => _$gGroupModificatorFragmentDataChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GGroupModificatorFragmentData_childModifiers.serializer, this)
      as Map<String, dynamic>);
  static GGroupModificatorFragmentData_childModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GGroupModificatorFragmentData_childModifiers.serializer, json);
}
