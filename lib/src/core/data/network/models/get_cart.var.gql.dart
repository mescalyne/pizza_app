// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_cart.var.gql.g.dart';

abstract class GGetCartQueryVars
    implements Built<GGetCartQueryVars, GGetCartQueryVarsBuilder> {
  GGetCartQueryVars._();

  factory GGetCartQueryVars([Function(GGetCartQueryVarsBuilder b) updates]) =
      _$GGetCartQueryVars;

  int get id;
  static Serializer<GGetCartQueryVars> get serializer =>
      _$gGetCartQueryVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetCartQueryVars.serializer, this)
          as Map<String, dynamic>);
  static GGetCartQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetCartQueryVars.serializer, json);
}
