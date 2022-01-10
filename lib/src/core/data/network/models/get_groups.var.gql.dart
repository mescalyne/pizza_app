// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'get_groups.var.gql.g.dart';

abstract class GGetGroupsQueryVars
    implements Built<GGetGroupsQueryVars, GGetGroupsQueryVarsBuilder> {
  GGetGroupsQueryVars._();

  factory GGetGroupsQueryVars(
      [Function(GGetGroupsQueryVarsBuilder b) updates]) = _$GGetGroupsQueryVars;

  _i1.GGroupFiltersInput? get filters;
  static Serializer<GGetGroupsQueryVars> get serializer =>
      _$gGetGroupsQueryVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GGetGroupsQueryVars.serializer, this)
          as Map<String, dynamic>);
  static GGetGroupsQueryVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GGetGroupsQueryVars.serializer, json);
}
