// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'phone_auth.var.gql.g.dart';

abstract class GphoneAuthVars
    implements Built<GphoneAuthVars, GphoneAuthVarsBuilder> {
  GphoneAuthVars._();

  factory GphoneAuthVars([Function(GphoneAuthVarsBuilder b) updates]) =
      _$GphoneAuthVars;

  String get telephone;
  String get code;
  static Serializer<GphoneAuthVars> get serializer =>
      _$gphoneAuthVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GphoneAuthVars.serializer, this)
          as Map<String, dynamic>);
  static GphoneAuthVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GphoneAuthVars.serializer, json);
}
