// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'restaurants_fragment.var.gql.g.dart';

abstract class GRestaurantFragmentVars
    implements Built<GRestaurantFragmentVars, GRestaurantFragmentVarsBuilder> {
  GRestaurantFragmentVars._();

  factory GRestaurantFragmentVars(
          [Function(GRestaurantFragmentVarsBuilder b) updates]) =
      _$GRestaurantFragmentVars;

  static Serializer<GRestaurantFragmentVars> get serializer =>
      _$gRestaurantFragmentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRestaurantFragmentVars.serializer, this)
          as Map<String, dynamic>);
  static GRestaurantFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRestaurantFragmentVars.serializer, json);
}
