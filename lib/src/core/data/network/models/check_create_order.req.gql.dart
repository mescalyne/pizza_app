// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/check_create_order.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/check_create_order.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/check_create_order.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'check_create_order.req.gql.g.dart';

abstract class GCheckCreateOrderReq
    implements
        Built<GCheckCreateOrderReq, GCheckCreateOrderReqBuilder>,
        _i1.OperationRequest<_i2.GCheckCreateOrderData,
            _i3.GCheckCreateOrderVars> {
  GCheckCreateOrderReq._();

  factory GCheckCreateOrderReq(
          [Function(GCheckCreateOrderReqBuilder b) updates]) =
      _$GCheckCreateOrderReq;

  static void _initializeBuilder(GCheckCreateOrderReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'CheckCreateOrder')
    ..executeOnListen = true;
  _i3.GCheckCreateOrderVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCheckCreateOrderData? Function(
      _i2.GCheckCreateOrderData?, _i2.GCheckCreateOrderData?)? get updateResult;
  _i2.GCheckCreateOrderData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCheckCreateOrderData? parseData(Map<String, dynamic> json) =>
      _i2.GCheckCreateOrderData.fromJson(json);
  static Serializer<GCheckCreateOrderReq> get serializer =>
      _$gCheckCreateOrderReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCheckCreateOrderReq.serializer, this)
          as Map<String, dynamic>);
  static GCheckCreateOrderReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCheckCreateOrderReq.serializer, json);
}
