// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_cart_order.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_cart_order.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_cart_order.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_cart_order.req.gql.g.dart';

abstract class GGetCartOrderQueryReq
    implements
        Built<GGetCartOrderQueryReq, GGetCartOrderQueryReqBuilder>,
        _i1.OperationRequest<_i2.GGetCartOrderQueryData,
            _i3.GGetCartOrderQueryVars> {
  GGetCartOrderQueryReq._();

  factory GGetCartOrderQueryReq(
          [Function(GGetCartOrderQueryReqBuilder b) updates]) =
      _$GGetCartOrderQueryReq;

  static void _initializeBuilder(GGetCartOrderQueryReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'GetCartOrderQuery')
    ..executeOnListen = true;
  _i3.GGetCartOrderQueryVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetCartOrderQueryData? Function(
          _i2.GGetCartOrderQueryData?, _i2.GGetCartOrderQueryData?)?
      get updateResult;
  _i2.GGetCartOrderQueryData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetCartOrderQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GGetCartOrderQueryData.fromJson(json);
  static Serializer<GGetCartOrderQueryReq> get serializer =>
      _$gGetCartOrderQueryReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetCartOrderQueryReq.serializer, this)
          as Map<String, dynamic>);
  static GGetCartOrderQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetCartOrderQueryReq.serializer, json);
}
