// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'paginator_info_fragment.var.gql.g.dart';

abstract class GPaginatorInfoFragmentVars
    implements
        Built<GPaginatorInfoFragmentVars, GPaginatorInfoFragmentVarsBuilder> {
  GPaginatorInfoFragmentVars._();

  factory GPaginatorInfoFragmentVars(
          [Function(GPaginatorInfoFragmentVarsBuilder b) updates]) =
      _$GPaginatorInfoFragmentVars;

  static Serializer<GPaginatorInfoFragmentVars> get serializer =>
      _$gPaginatorInfoFragmentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GPaginatorInfoFragmentVars.serializer, this) as Map<String, dynamic>);
  static GPaginatorInfoFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GPaginatorInfoFragmentVars.serializer, json);
}
