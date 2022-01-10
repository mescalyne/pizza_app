// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'refresh_token.var.gql.g.dart';

abstract class GrefreshTokenVars
    implements Built<GrefreshTokenVars, GrefreshTokenVarsBuilder> {
  GrefreshTokenVars._();

  factory GrefreshTokenVars([Function(GrefreshTokenVarsBuilder b) updates]) =
      _$GrefreshTokenVars;

  String get refresh_token;
  static Serializer<GrefreshTokenVars> get serializer =>
      _$grefreshTokenVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GrefreshTokenVars.serializer, this)
          as Map<String, dynamic>);
  static GrefreshTokenVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GrefreshTokenVars.serializer, json);
}
