// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'remove_item_from_cart.var.gql.g.dart';

abstract class GRemoveItemFromCartVars
    implements Built<GRemoveItemFromCartVars, GRemoveItemFromCartVarsBuilder> {
  GRemoveItemFromCartVars._();

  factory GRemoveItemFromCartVars(
          [Function(GRemoveItemFromCartVarsBuilder b) updates]) =
      _$GRemoveItemFromCartVars;

  String get cart_item_id;
  static Serializer<GRemoveItemFromCartVars> get serializer =>
      _$gRemoveItemFromCartVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRemoveItemFromCartVars.serializer, this)
          as Map<String, dynamic>);
  static GRemoveItemFromCartVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRemoveItemFromCartVars.serializer, json);
}
