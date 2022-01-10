// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_cart_order.var.gql.g.dart';

abstract class GGetCartOrderQueryVars
    implements Built<GGetCartOrderQueryVars, GGetCartOrderQueryVarsBuilder> {
  GGetCartOrderQueryVars._();

  factory GGetCartOrderQueryVars(
          [Function(GGetCartOrderQueryVarsBuilder b) updates]) =
      _$GGetCartOrderQueryVars;

  int get id;
  static Serializer<GGetCartOrderQueryVars> get serializer =>
      _$gGetCartOrderQueryVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetCartOrderQueryVars.serializer, this)
          as Map<String, dynamic>);
  static GGetCartOrderQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetCartOrderQueryVars.serializer, json);
}
