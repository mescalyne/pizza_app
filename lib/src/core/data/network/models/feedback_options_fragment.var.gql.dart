// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'feedback_options_fragment.var.gql.g.dart';

abstract class GFeedbackOptionFragmentVars
    implements
        Built<GFeedbackOptionFragmentVars, GFeedbackOptionFragmentVarsBuilder> {
  GFeedbackOptionFragmentVars._();

  factory GFeedbackOptionFragmentVars(
          [Function(GFeedbackOptionFragmentVarsBuilder b) updates]) =
      _$GFeedbackOptionFragmentVars;

  static Serializer<GFeedbackOptionFragmentVars> get serializer =>
      _$gFeedbackOptionFragmentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFeedbackOptionFragmentVars.serializer, this) as Map<String, dynamic>);
  static GFeedbackOptionFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFeedbackOptionFragmentVars.serializer, json);
}
