// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'unique_page_fragment.var.gql.g.dart';

abstract class GUniquePageFragmentVars
    implements Built<GUniquePageFragmentVars, GUniquePageFragmentVarsBuilder> {
  GUniquePageFragmentVars._();

  factory GUniquePageFragmentVars(
          [Function(GUniquePageFragmentVarsBuilder b) updates]) =
      _$GUniquePageFragmentVars;

  static Serializer<GUniquePageFragmentVars> get serializer =>
      _$gUniquePageFragmentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUniquePageFragmentVars.serializer, this)
          as Map<String, dynamic>);
  static GUniquePageFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUniquePageFragmentVars.serializer, json);
}
