// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_group.var.gql.g.dart';

abstract class GGetGroupQueryVars
    implements Built<GGetGroupQueryVars, GGetGroupQueryVarsBuilder> {
  GGetGroupQueryVars._();

  factory GGetGroupQueryVars([Function(GGetGroupQueryVarsBuilder b) updates]) =
      _$GGetGroupQueryVars;

  String get id;
  static Serializer<GGetGroupQueryVars> get serializer =>
      _$gGetGroupQueryVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetGroupQueryVars.serializer, this)
          as Map<String, dynamic>);
  static GGetGroupQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetGroupQueryVars.serializer, json);
}
