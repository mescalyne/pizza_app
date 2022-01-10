// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'get_archived_carts.var.gql.g.dart';

abstract class GGetArchivedCartsQueryVars
    implements
        Built<GGetArchivedCartsQueryVars, GGetArchivedCartsQueryVarsBuilder> {
  GGetArchivedCartsQueryVars._();

  factory GGetArchivedCartsQueryVars(
          [Function(GGetArchivedCartsQueryVarsBuilder b) updates]) =
      _$GGetArchivedCartsQueryVars;

  int? get page;
  int? get perPage;
  _i1.GCartFiltersInput? get filters;
  static Serializer<GGetArchivedCartsQueryVars> get serializer =>
      _$gGetArchivedCartsQueryVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GGetArchivedCartsQueryVars.serializer, this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GGetArchivedCartsQueryVars.serializer, json);
}
