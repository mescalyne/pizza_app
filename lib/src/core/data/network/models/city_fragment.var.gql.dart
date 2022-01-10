// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'city_fragment.var.gql.g.dart';

abstract class GCityFragmentVars
    implements Built<GCityFragmentVars, GCityFragmentVarsBuilder> {
  GCityFragmentVars._();

  factory GCityFragmentVars([Function(GCityFragmentVarsBuilder b) updates]) =
      _$GCityFragmentVars;

  static Serializer<GCityFragmentVars> get serializer =>
      _$gCityFragmentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCityFragmentVars.serializer, this)
          as Map<String, dynamic>);
  static GCityFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCityFragmentVars.serializer, json);
}
