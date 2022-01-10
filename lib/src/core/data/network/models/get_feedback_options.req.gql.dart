// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_feedback_options.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_feedback_options.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_feedback_options.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_feedback_options.req.gql.g.dart';

abstract class GGetFeedbackOptionsReq
    implements
        Built<GGetFeedbackOptionsReq, GGetFeedbackOptionsReqBuilder>,
        _i1.OperationRequest<_i2.GGetFeedbackOptionsData,
            _i3.GGetFeedbackOptionsVars> {
  GGetFeedbackOptionsReq._();

  factory GGetFeedbackOptionsReq(
          [Function(GGetFeedbackOptionsReqBuilder b) updates]) =
      _$GGetFeedbackOptionsReq;

  static void _initializeBuilder(GGetFeedbackOptionsReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'GetFeedbackOptions')
    ..executeOnListen = true;
  _i3.GGetFeedbackOptionsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetFeedbackOptionsData? Function(
          _i2.GGetFeedbackOptionsData?, _i2.GGetFeedbackOptionsData?)?
      get updateResult;
  _i2.GGetFeedbackOptionsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetFeedbackOptionsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetFeedbackOptionsData.fromJson(json);
  static Serializer<GGetFeedbackOptionsReq> get serializer =>
      _$gGetFeedbackOptionsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetFeedbackOptionsReq.serializer, this)
          as Map<String, dynamic>);
  static GGetFeedbackOptionsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetFeedbackOptionsReq.serializer, json);
}
