// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'me.var.gql.g.dart';

abstract class GGetCurrentUserVars
    implements Built<GGetCurrentUserVars, GGetCurrentUserVarsBuilder> {
  GGetCurrentUserVars._();

  factory GGetCurrentUserVars(
      [Function(GGetCurrentUserVarsBuilder b) updates]) = _$GGetCurrentUserVars;

  static Serializer<GGetCurrentUserVars> get serializer =>
      _$gGetCurrentUserVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetCurrentUserVars.serializer, this)
          as Map<String, dynamic>);
  static GGetCurrentUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetCurrentUserVars.serializer, json);
}
