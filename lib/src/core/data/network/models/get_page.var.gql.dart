// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_page.var.gql.g.dart';

abstract class GGetPageQueryVars
    implements Built<GGetPageQueryVars, GGetPageQueryVarsBuilder> {
  GGetPageQueryVars._();

  factory GGetPageQueryVars([Function(GGetPageQueryVarsBuilder b) updates]) =
      _$GGetPageQueryVars;

  String get slug;
  int? get city_id;
  static Serializer<GGetPageQueryVars> get serializer =>
      _$gGetPageQueryVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetPageQueryVars.serializer, this)
          as Map<String, dynamic>);
  static GGetPageQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetPageQueryVars.serializer, json);
}
