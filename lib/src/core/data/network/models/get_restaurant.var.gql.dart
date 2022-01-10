// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_restaurant.var.gql.g.dart';

abstract class GGetRestaurantVars
    implements Built<GGetRestaurantVars, GGetRestaurantVarsBuilder> {
  GGetRestaurantVars._();

  factory GGetRestaurantVars([Function(GGetRestaurantVarsBuilder b) updates]) =
      _$GGetRestaurantVars;

  int? get id;
  static Serializer<GGetRestaurantVars> get serializer =>
      _$gGetRestaurantVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetRestaurantVars.serializer, this)
          as Map<String, dynamic>);
  static GGetRestaurantVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetRestaurantVars.serializer, json);
}
