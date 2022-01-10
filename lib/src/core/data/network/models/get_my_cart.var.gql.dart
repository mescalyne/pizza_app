// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_my_cart.var.gql.g.dart';

abstract class GGetMyCartVars
    implements Built<GGetMyCartVars, GGetMyCartVarsBuilder> {
  GGetMyCartVars._();

  factory GGetMyCartVars([Function(GGetMyCartVarsBuilder b) updates]) =
      _$GGetMyCartVars;

  static Serializer<GGetMyCartVars> get serializer =>
      _$gGetMyCartVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetMyCartVars.serializer, this)
          as Map<String, dynamic>);
  static GGetMyCartVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetMyCartVars.serializer, json);
}
