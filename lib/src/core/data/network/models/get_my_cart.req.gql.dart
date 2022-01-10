// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_my_cart.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_my_cart.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_my_cart.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_my_cart.req.gql.g.dart';

abstract class GGetMyCartReq
    implements
        Built<GGetMyCartReq, GGetMyCartReqBuilder>,
        _i1.OperationRequest<_i2.GGetMyCartData, _i3.GGetMyCartVars> {
  GGetMyCartReq._();

  factory GGetMyCartReq([Function(GGetMyCartReqBuilder b) updates]) =
      _$GGetMyCartReq;

  static void _initializeBuilder(GGetMyCartReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetMyCart')
    ..executeOnListen = true;
  _i3.GGetMyCartVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetMyCartData? Function(_i2.GGetMyCartData?, _i2.GGetMyCartData?)?
      get updateResult;
  _i2.GGetMyCartData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetMyCartData? parseData(Map<String, dynamic> json) =>
      _i2.GGetMyCartData.fromJson(json);
  static Serializer<GGetMyCartReq> get serializer => _$gGetMyCartReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetMyCartReq.serializer, this)
          as Map<String, dynamic>);
  static GGetMyCartReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetMyCartReq.serializer, json);
}
