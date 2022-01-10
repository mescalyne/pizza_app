// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'add_item_to_cart.var.gql.g.dart';

abstract class GAddItemToCartVars
    implements Built<GAddItemToCartVars, GAddItemToCartVarsBuilder> {
  GAddItemToCartVars._();

  factory GAddItemToCartVars([Function(GAddItemToCartVarsBuilder b) updates]) =
      _$GAddItemToCartVars;

  _i1.GaddItemToCartInput? get input;
  static Serializer<GAddItemToCartVars> get serializer =>
      _$gAddItemToCartVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GAddItemToCartVars.serializer, this)
          as Map<String, dynamic>);
  static GAddItemToCartVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GAddItemToCartVars.serializer, json);
}
