// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'contact_page_fragment.var.gql.g.dart';

abstract class GContactPageFragmentVars
    implements
        Built<GContactPageFragmentVars, GContactPageFragmentVarsBuilder> {
  GContactPageFragmentVars._();

  factory GContactPageFragmentVars(
          [Function(GContactPageFragmentVarsBuilder b) updates]) =
      _$GContactPageFragmentVars;

  static Serializer<GContactPageFragmentVars> get serializer =>
      _$gContactPageFragmentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GContactPageFragmentVars.serializer, this)
          as Map<String, dynamic>);
  static GContactPageFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GContactPageFragmentVars.serializer, json);
}
