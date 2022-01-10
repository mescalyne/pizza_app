// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_cities.var.gql.g.dart';

abstract class GGetCitiesQueryVars
    implements Built<GGetCitiesQueryVars, GGetCitiesQueryVarsBuilder> {
  GGetCitiesQueryVars._();

  factory GGetCitiesQueryVars(
      [Function(GGetCitiesQueryVarsBuilder b) updates]) = _$GGetCitiesQueryVars;

  static Serializer<GGetCitiesQueryVars> get serializer =>
      _$gGetCitiesQueryVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetCitiesQueryVars.serializer, this)
          as Map<String, dynamic>);
  static GGetCitiesQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetCitiesQueryVars.serializer, json);
}
