// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_feedback_options.var.gql.g.dart';

abstract class GGetFeedbackOptionsVars
    implements Built<GGetFeedbackOptionsVars, GGetFeedbackOptionsVarsBuilder> {
  GGetFeedbackOptionsVars._();

  factory GGetFeedbackOptionsVars(
          [Function(GGetFeedbackOptionsVarsBuilder b) updates]) =
      _$GGetFeedbackOptionsVars;

  static Serializer<GGetFeedbackOptionsVars> get serializer =>
      _$gGetFeedbackOptionsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetFeedbackOptionsVars.serializer, this)
          as Map<String, dynamic>);
  static GGetFeedbackOptionsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetFeedbackOptionsVars.serializer, json);
}
