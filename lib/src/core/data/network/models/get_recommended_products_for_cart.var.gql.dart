// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_recommended_products_for_cart.var.gql.g.dart';

abstract class GGetRecommendedProductsForCartVars
    implements
        Built<GGetRecommendedProductsForCartVars,
            GGetRecommendedProductsForCartVarsBuilder> {
  GGetRecommendedProductsForCartVars._();

  factory GGetRecommendedProductsForCartVars(
          [Function(GGetRecommendedProductsForCartVarsBuilder b) updates]) =
      _$GGetRecommendedProductsForCartVars;

  int get limit;
  static Serializer<GGetRecommendedProductsForCartVars> get serializer =>
      _$gGetRecommendedProductsForCartVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetRecommendedProductsForCartVars.serializer, this)
      as Map<String, dynamic>);
  static GGetRecommendedProductsForCartVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetRecommendedProductsForCartVars.serializer, json);
}
