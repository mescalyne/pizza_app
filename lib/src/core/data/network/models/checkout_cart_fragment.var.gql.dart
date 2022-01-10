// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'checkout_cart_fragment.var.gql.g.dart';

abstract class GCheckoutResponseFragmentVars
    implements
        Built<GCheckoutResponseFragmentVars,
            GCheckoutResponseFragmentVarsBuilder> {
  GCheckoutResponseFragmentVars._();

  factory GCheckoutResponseFragmentVars(
          [Function(GCheckoutResponseFragmentVarsBuilder b) updates]) =
      _$GCheckoutResponseFragmentVars;

  static Serializer<GCheckoutResponseFragmentVars> get serializer =>
      _$gCheckoutResponseFragmentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCheckoutResponseFragmentVars.serializer, this) as Map<String, dynamic>);
  static GCheckoutResponseFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCheckoutResponseFragmentVars.serializer, json);
}
