// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'order_info_fragment.var.gql.g.dart';

abstract class GOrderInfoFragmentVars
    implements Built<GOrderInfoFragmentVars, GOrderInfoFragmentVarsBuilder> {
  GOrderInfoFragmentVars._();

  factory GOrderInfoFragmentVars(
          [Function(GOrderInfoFragmentVarsBuilder b) updates]) =
      _$GOrderInfoFragmentVars;

  static Serializer<GOrderInfoFragmentVars> get serializer =>
      _$gOrderInfoFragmentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GOrderInfoFragmentVars.serializer, this)
          as Map<String, dynamic>);
  static GOrderInfoFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GOrderInfoFragmentVars.serializer, json);
}
