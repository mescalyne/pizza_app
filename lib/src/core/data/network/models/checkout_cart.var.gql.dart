// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'checkout_cart.var.gql.g.dart';

abstract class GCheckoutCartVars
    implements Built<GCheckoutCartVars, GCheckoutCartVarsBuilder> {
  GCheckoutCartVars._();

  factory GCheckoutCartVars([Function(GCheckoutCartVarsBuilder b) updates]) =
      _$GCheckoutCartVars;

  static Serializer<GCheckoutCartVars> get serializer =>
      _$gCheckoutCartVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCheckoutCartVars.serializer, this)
          as Map<String, dynamic>);
  static GCheckoutCartVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCheckoutCartVars.serializer, json);
}
