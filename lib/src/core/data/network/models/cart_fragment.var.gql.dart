// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'cart_fragment.var.gql.g.dart';

abstract class GCartFragmentVars
    implements Built<GCartFragmentVars, GCartFragmentVarsBuilder> {
  GCartFragmentVars._();

  factory GCartFragmentVars([Function(GCartFragmentVarsBuilder b) updates]) =
      _$GCartFragmentVars;

  static Serializer<GCartFragmentVars> get serializer =>
      _$gCartFragmentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCartFragmentVars.serializer, this)
          as Map<String, dynamic>);
  static GCartFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCartFragmentVars.serializer, json);
}
