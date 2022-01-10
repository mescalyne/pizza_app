// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'modificator_fragment.var.gql.g.dart';

abstract class GModificatorFragmentVars
    implements
        Built<GModificatorFragmentVars, GModificatorFragmentVarsBuilder> {
  GModificatorFragmentVars._();

  factory GModificatorFragmentVars(
          [Function(GModificatorFragmentVarsBuilder b) updates]) =
      _$GModificatorFragmentVars;

  static Serializer<GModificatorFragmentVars> get serializer =>
      _$gModificatorFragmentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GModificatorFragmentVars.serializer, this)
          as Map<String, dynamic>);
  static GModificatorFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GModificatorFragmentVars.serializer, json);
}
