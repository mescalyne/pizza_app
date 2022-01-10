// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'send_order_feedback.data.gql.g.dart';

abstract class GSendOrderFeedbackData
    implements Built<GSendOrderFeedbackData, GSendOrderFeedbackDataBuilder> {
  GSendOrderFeedbackData._();

  factory GSendOrderFeedbackData(
          [Function(GSendOrderFeedbackDataBuilder b) updates]) =
      _$GSendOrderFeedbackData;

  static void _initializeBuilder(GSendOrderFeedbackDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GSendOrderFeedbackData_sendOrderFeedback? get sendOrderFeedback;
  static Serializer<GSendOrderFeedbackData> get serializer =>
      _$gSendOrderFeedbackDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GSendOrderFeedbackData.serializer, this)
          as Map<String, dynamic>);
  static GSendOrderFeedbackData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GSendOrderFeedbackData.serializer, json);
}

abstract class GSendOrderFeedbackData_sendOrderFeedback
    implements
        Built<GSendOrderFeedbackData_sendOrderFeedback,
            GSendOrderFeedbackData_sendOrderFeedbackBuilder> {
  GSendOrderFeedbackData_sendOrderFeedback._();

  factory GSendOrderFeedbackData_sendOrderFeedback(
      [Function(GSendOrderFeedbackData_sendOrderFeedbackBuilder b)
          updates]) = _$GSendOrderFeedbackData_sendOrderFeedback;

  static void _initializeBuilder(
          GSendOrderFeedbackData_sendOrderFeedbackBuilder b) =>
      b..G__typename = 'OrderFeedback';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  static Serializer<GSendOrderFeedbackData_sendOrderFeedback> get serializer =>
      _$gSendOrderFeedbackDataSendOrderFeedbackSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GSendOrderFeedbackData_sendOrderFeedback.serializer, this)
      as Map<String, dynamic>);
  static GSendOrderFeedbackData_sendOrderFeedback? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GSendOrderFeedbackData_sendOrderFeedback.serializer, json);
}
