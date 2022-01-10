// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'auth_guest.var.gql.g.dart';

abstract class GauthGuestVars
    implements Built<GauthGuestVars, GauthGuestVarsBuilder> {
  GauthGuestVars._();

  factory GauthGuestVars([Function(GauthGuestVarsBuilder b) updates]) =
      _$GauthGuestVars;

  static Serializer<GauthGuestVars> get serializer =>
      _$gauthGuestVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GauthGuestVars.serializer, this)
          as Map<String, dynamic>);
  static GauthGuestVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GauthGuestVars.serializer, json);
}
