// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'cartItem_modifier_fragment.var.gql.g.dart';

abstract class GCartItemModifierFragmentVars
    implements
        Built<GCartItemModifierFragmentVars,
            GCartItemModifierFragmentVarsBuilder> {
  GCartItemModifierFragmentVars._();

  factory GCartItemModifierFragmentVars(
          [Function(GCartItemModifierFragmentVarsBuilder b) updates]) =
      _$GCartItemModifierFragmentVars;

  static Serializer<GCartItemModifierFragmentVars> get serializer =>
      _$gCartItemModifierFragmentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCartItemModifierFragmentVars.serializer, this) as Map<String, dynamic>);
  static GCartItemModifierFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCartItemModifierFragmentVars.serializer, json);
}
