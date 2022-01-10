// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'get_products.var.gql.g.dart';

abstract class GGetProductsQueryVars
    implements Built<GGetProductsQueryVars, GGetProductsQueryVarsBuilder> {
  GGetProductsQueryVars._();

  factory GGetProductsQueryVars(
          [Function(GGetProductsQueryVarsBuilder b) updates]) =
      _$GGetProductsQueryVars;

  _i1.GProductFiltersInput? get filters;
  static Serializer<GGetProductsQueryVars> get serializer =>
      _$gGetProductsQueryVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GGetProductsQueryVars.serializer, this)
          as Map<String, dynamic>);
  static GGetProductsQueryVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GGetProductsQueryVars.serializer, json);
}
