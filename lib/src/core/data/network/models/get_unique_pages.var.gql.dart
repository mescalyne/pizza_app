// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_unique_pages.var.gql.g.dart';

abstract class GGetUniquePagesVars
    implements Built<GGetUniquePagesVars, GGetUniquePagesVarsBuilder> {
  GGetUniquePagesVars._();

  factory GGetUniquePagesVars(
      [Function(GGetUniquePagesVarsBuilder b) updates]) = _$GGetUniquePagesVars;

  static Serializer<GGetUniquePagesVars> get serializer =>
      _$gGetUniquePagesVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUniquePagesVars.serializer, this)
          as Map<String, dynamic>);
  static GGetUniquePagesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUniquePagesVars.serializer, json);
}
