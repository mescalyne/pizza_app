// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'page_fragment.var.gql.g.dart';

abstract class GPageFragmentVars
    implements Built<GPageFragmentVars, GPageFragmentVarsBuilder> {
  GPageFragmentVars._();

  factory GPageFragmentVars([Function(GPageFragmentVarsBuilder b) updates]) =
      _$GPageFragmentVars;

  static Serializer<GPageFragmentVars> get serializer =>
      _$gPageFragmentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GPageFragmentVars.serializer, this)
          as Map<String, dynamic>);
  static GPageFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GPageFragmentVars.serializer, json);
}
