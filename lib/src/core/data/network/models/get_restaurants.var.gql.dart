// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_restaurants.var.gql.g.dart';

abstract class GGetRestaurantsQueryVars
    implements
        Built<GGetRestaurantsQueryVars, GGetRestaurantsQueryVarsBuilder> {
  GGetRestaurantsQueryVars._();

  factory GGetRestaurantsQueryVars(
          [Function(GGetRestaurantsQueryVarsBuilder b) updates]) =
      _$GGetRestaurantsQueryVars;

  int? get city_id;
  static Serializer<GGetRestaurantsQueryVars> get serializer =>
      _$gGetRestaurantsQueryVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetRestaurantsQueryVars.serializer, this)
          as Map<String, dynamic>);
  static GGetRestaurantsQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetRestaurantsQueryVars.serializer, json);
}
