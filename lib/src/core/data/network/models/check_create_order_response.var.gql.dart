// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'check_create_order_response.var.gql.g.dart';

abstract class GCheckCreateOrderResponseFragmentVars
    implements
        Built<GCheckCreateOrderResponseFragmentVars,
            GCheckCreateOrderResponseFragmentVarsBuilder> {
  GCheckCreateOrderResponseFragmentVars._();

  factory GCheckCreateOrderResponseFragmentVars(
          [Function(GCheckCreateOrderResponseFragmentVarsBuilder b) updates]) =
      _$GCheckCreateOrderResponseFragmentVars;

  static Serializer<GCheckCreateOrderResponseFragmentVars> get serializer =>
      _$gCheckCreateOrderResponseFragmentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GCheckCreateOrderResponseFragmentVars.serializer, this)
      as Map<String, dynamic>);
  static GCheckCreateOrderResponseFragmentVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCheckCreateOrderResponseFragmentVars.serializer, json);
}
