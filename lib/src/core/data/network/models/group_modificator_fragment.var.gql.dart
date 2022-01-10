// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'group_modificator_fragment.var.gql.g.dart';

abstract class GGroupModificatorFragmentVars
    implements
        Built<GGroupModificatorFragmentVars,
            GGroupModificatorFragmentVarsBuilder> {
  GGroupModificatorFragmentVars._();

  factory GGroupModificatorFragmentVars(
          [Function(GGroupModificatorFragmentVarsBuilder b) updates]) =
      _$GGroupModificatorFragmentVars;

  static Serializer<GGroupModificatorFragmentVars> get serializer =>
      _$gGroupModificatorFragmentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGroupModificatorFragmentVars.serializer, this) as Map<String, dynamic>);
  static GGroupModificatorFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGroupModificatorFragmentVars.serializer, json);
}
