// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'add_items_to_cart.var.gql.g.dart';

abstract class GAddItemsToCartVars
    implements Built<GAddItemsToCartVars, GAddItemsToCartVarsBuilder> {
  GAddItemsToCartVars._();

  factory GAddItemsToCartVars(
      [Function(GAddItemsToCartVarsBuilder b) updates]) = _$GAddItemsToCartVars;

  _i1.GaddItemsToCartInput? get input;
  static Serializer<GAddItemsToCartVars> get serializer =>
      _$gAddItemsToCartVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GAddItemsToCartVars.serializer, this)
          as Map<String, dynamic>);
  static GAddItemsToCartVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GAddItemsToCartVars.serializer, json);
}
