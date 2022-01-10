// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'remove_cart.var.gql.g.dart';

abstract class GRemoveCartVars
    implements Built<GRemoveCartVars, GRemoveCartVarsBuilder> {
  GRemoveCartVars._();

  factory GRemoveCartVars([Function(GRemoveCartVarsBuilder b) updates]) =
      _$GRemoveCartVars;

  static Serializer<GRemoveCartVars> get serializer =>
      _$gRemoveCartVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRemoveCartVars.serializer, this)
          as Map<String, dynamic>);
  static GRemoveCartVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRemoveCartVars.serializer, json);
}
