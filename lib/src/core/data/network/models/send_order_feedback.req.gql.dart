// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/send_order_feedback.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/send_order_feedback.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/send_order_feedback.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'send_order_feedback.req.gql.g.dart';

abstract class GSendOrderFeedbackReq
    implements
        Built<GSendOrderFeedbackReq, GSendOrderFeedbackReqBuilder>,
        _i1.OperationRequest<_i2.GSendOrderFeedbackData,
            _i3.GSendOrderFeedbackVars> {
  GSendOrderFeedbackReq._();

  factory GSendOrderFeedbackReq(
          [Function(GSendOrderFeedbackReqBuilder b) updates]) =
      _$GSendOrderFeedbackReq;

  static void _initializeBuilder(GSendOrderFeedbackReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'SendOrderFeedback')
    ..executeOnListen = true;
  _i3.GSendOrderFeedbackVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GSendOrderFeedbackData? Function(
          _i2.GSendOrderFeedbackData?, _i2.GSendOrderFeedbackData?)?
      get updateResult;
  _i2.GSendOrderFeedbackData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GSendOrderFeedbackData? parseData(Map<String, dynamic> json) =>
      _i2.GSendOrderFeedbackData.fromJson(json);
  static Serializer<GSendOrderFeedbackReq> get serializer =>
      _$gSendOrderFeedbackReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GSendOrderFeedbackReq.serializer, this)
          as Map<String, dynamic>);
  static GSendOrderFeedbackReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GSendOrderFeedbackReq.serializer, json);
}
