// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'product_fragment.var.gql.g.dart';

abstract class GProductFragmentVars
    implements Built<GProductFragmentVars, GProductFragmentVarsBuilder> {
  GProductFragmentVars._();

  factory GProductFragmentVars(
          [Function(GProductFragmentVarsBuilder b) updates]) =
      _$GProductFragmentVars;

  static Serializer<GProductFragmentVars> get serializer =>
      _$gProductFragmentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GProductFragmentVars.serializer, this)
          as Map<String, dynamic>);
  static GProductFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GProductFragmentVars.serializer, json);
}
