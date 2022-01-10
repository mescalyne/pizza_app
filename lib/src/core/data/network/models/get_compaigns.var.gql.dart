// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_compaigns.var.gql.g.dart';

abstract class GGetCompaignsVars
    implements Built<GGetCompaignsVars, GGetCompaignsVarsBuilder> {
  GGetCompaignsVars._();

  factory GGetCompaignsVars([Function(GGetCompaignsVarsBuilder b) updates]) =
      _$GGetCompaignsVars;

  static Serializer<GGetCompaignsVars> get serializer =>
      _$gGetCompaignsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetCompaignsVars.serializer, this)
          as Map<String, dynamic>);
  static GGetCompaignsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetCompaignsVars.serializer, json);
}
