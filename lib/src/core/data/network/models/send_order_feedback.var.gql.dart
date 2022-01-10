// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'send_order_feedback.var.gql.g.dart';

abstract class GSendOrderFeedbackVars
    implements Built<GSendOrderFeedbackVars, GSendOrderFeedbackVarsBuilder> {
  GSendOrderFeedbackVars._();

  factory GSendOrderFeedbackVars(
          [Function(GSendOrderFeedbackVarsBuilder b) updates]) =
      _$GSendOrderFeedbackVars;

  int get cart_id;
  String? get comment;
  int get mark;
  BuiltList<_i1.GOptionInput>? get options;
  static Serializer<GSendOrderFeedbackVars> get serializer =>
      _$gSendOrderFeedbackVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GSendOrderFeedbackVars.serializer, this)
          as Map<String, dynamic>);
  static GSendOrderFeedbackVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GSendOrderFeedbackVars.serializer, json);
}
