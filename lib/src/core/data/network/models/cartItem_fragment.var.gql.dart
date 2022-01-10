// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'cartItem_fragment.var.gql.g.dart';

abstract class GCartItemFragmentVars
    implements Built<GCartItemFragmentVars, GCartItemFragmentVarsBuilder> {
  GCartItemFragmentVars._();

  factory GCartItemFragmentVars(
          [Function(GCartItemFragmentVarsBuilder b) updates]) =
      _$GCartItemFragmentVars;

  static Serializer<GCartItemFragmentVars> get serializer =>
      _$gCartItemFragmentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCartItemFragmentVars.serializer, this)
          as Map<String, dynamic>);
  static GCartItemFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCartItemFragmentVars.serializer, json);
}
