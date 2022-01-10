// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'edit_cart_item.var.gql.g.dart';

abstract class GEditCartItemVars
    implements Built<GEditCartItemVars, GEditCartItemVarsBuilder> {
  GEditCartItemVars._();

  factory GEditCartItemVars([Function(GEditCartItemVarsBuilder b) updates]) =
      _$GEditCartItemVars;

  _i1.GeditCartItemInput? get input;
  static Serializer<GEditCartItemVars> get serializer =>
      _$gEditCartItemVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GEditCartItemVars.serializer, this)
          as Map<String, dynamic>);
  static GEditCartItemVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GEditCartItemVars.serializer, json);
}
