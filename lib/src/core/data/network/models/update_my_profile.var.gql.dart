// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'update_my_profile.var.gql.g.dart';

abstract class GupdateCurrentUserVars
    implements Built<GupdateCurrentUserVars, GupdateCurrentUserVarsBuilder> {
  GupdateCurrentUserVars._();

  factory GupdateCurrentUserVars(
          [Function(GupdateCurrentUserVarsBuilder b) updates]) =
      _$GupdateCurrentUserVars;

  String get name;
  String? get email;
  String? get date_of_birth;
  static Serializer<GupdateCurrentUserVars> get serializer =>
      _$gupdateCurrentUserVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GupdateCurrentUserVars.serializer, this)
          as Map<String, dynamic>);
  static GupdateCurrentUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GupdateCurrentUserVars.serializer, json);
}
