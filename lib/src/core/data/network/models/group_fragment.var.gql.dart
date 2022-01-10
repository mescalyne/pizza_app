// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'group_fragment.var.gql.g.dart';

abstract class GGroupFragmentVars
    implements Built<GGroupFragmentVars, GGroupFragmentVarsBuilder> {
  GGroupFragmentVars._();

  factory GGroupFragmentVars([Function(GGroupFragmentVarsBuilder b) updates]) =
      _$GGroupFragmentVars;

  static Serializer<GGroupFragmentVars> get serializer =>
      _$gGroupFragmentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGroupFragmentVars.serializer, this)
          as Map<String, dynamic>);
  static GGroupFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGroupFragmentVars.serializer, json);
}
