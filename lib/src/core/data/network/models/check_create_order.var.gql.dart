// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'check_create_order.var.gql.g.dart';

abstract class GCheckCreateOrderVars
    implements Built<GCheckCreateOrderVars, GCheckCreateOrderVarsBuilder> {
  GCheckCreateOrderVars._();

  factory GCheckCreateOrderVars(
          [Function(GCheckCreateOrderVarsBuilder b) updates]) =
      _$GCheckCreateOrderVars;

  static Serializer<GCheckCreateOrderVars> get serializer =>
      _$gCheckCreateOrderVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCheckCreateOrderVars.serializer, this)
          as Map<String, dynamic>);
  static GCheckCreateOrderVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCheckCreateOrderVars.serializer, json);
}
