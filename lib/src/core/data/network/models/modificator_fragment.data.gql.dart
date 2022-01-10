// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'modificator_fragment.data.gql.g.dart';

abstract class GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GModificatorFragmentData
    implements
        Built<GModificatorFragmentData, GModificatorFragmentDataBuilder>,
        GModificatorFragment {
  GModificatorFragmentData._();

  factory GModificatorFragmentData(
          [Function(GModificatorFragmentDataBuilder b) updates]) =
      _$GModificatorFragmentData;

  static void _initializeBuilder(GModificatorFragmentDataBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GModificatorFragmentData> get serializer =>
      _$gModificatorFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GModificatorFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GModificatorFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GModificatorFragmentData.serializer, json);
}
