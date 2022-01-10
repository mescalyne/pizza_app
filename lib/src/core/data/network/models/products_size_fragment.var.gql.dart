// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'products_size_fragment.var.gql.g.dart';

abstract class GProductsSizesFragmentVars
    implements
        Built<GProductsSizesFragmentVars, GProductsSizesFragmentVarsBuilder> {
  GProductsSizesFragmentVars._();

  factory GProductsSizesFragmentVars(
          [Function(GProductsSizesFragmentVarsBuilder b) updates]) =
      _$GProductsSizesFragmentVars;

  static Serializer<GProductsSizesFragmentVars> get serializer =>
      _$gProductsSizesFragmentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GProductsSizesFragmentVars.serializer, this) as Map<String, dynamic>);
  static GProductsSizesFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GProductsSizesFragmentVars.serializer, json);
}
