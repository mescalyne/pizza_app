// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_contacts.var.gql.g.dart';

abstract class GGetContactsQueryVars
    implements Built<GGetContactsQueryVars, GGetContactsQueryVarsBuilder> {
  GGetContactsQueryVars._();

  factory GGetContactsQueryVars(
          [Function(GGetContactsQueryVarsBuilder b) updates]) =
      _$GGetContactsQueryVars;

  int? get city_id;
  static Serializer<GGetContactsQueryVars> get serializer =>
      _$gGetContactsQueryVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetContactsQueryVars.serializer, this)
          as Map<String, dynamic>);
  static GGetContactsQueryVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetContactsQueryVars.serializer, json);
}
