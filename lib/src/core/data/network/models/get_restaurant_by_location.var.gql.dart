// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_restaurant_by_location.var.gql.g.dart';

abstract class GGetRestaurantByLocationQueryVars
    implements
        Built<GGetRestaurantByLocationQueryVars,
            GGetRestaurantByLocationQueryVarsBuilder> {
  GGetRestaurantByLocationQueryVars._();

  factory GGetRestaurantByLocationQueryVars(
          [Function(GGetRestaurantByLocationQueryVarsBuilder b) updates]) =
      _$GGetRestaurantByLocationQueryVars;

  double get latitude;
  double get longitude;
  static Serializer<GGetRestaurantByLocationQueryVars> get serializer =>
      _$gGetRestaurantByLocationQueryVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetRestaurantByLocationQueryVars.serializer, this)
      as Map<String, dynamic>);
  static GGetRestaurantByLocationQueryVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetRestaurantByLocationQueryVars.serializer, json);
}
