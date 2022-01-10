// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_products.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_products.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_products.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_products.req.gql.g.dart';

abstract class GGetProductsQueryReq
    implements
        Built<GGetProductsQueryReq, GGetProductsQueryReqBuilder>,
        _i1.OperationRequest<_i2.GGetProductsQueryData,
            _i3.GGetProductsQueryVars> {
  GGetProductsQueryReq._();

  factory GGetProductsQueryReq(
          [Function(GGetProductsQueryReqBuilder b) updates]) =
      _$GGetProductsQueryReq;

  static void _initializeBuilder(GGetProductsQueryReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetProductsQuery')
    ..executeOnListen = true;
  _i3.GGetProductsQueryVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetProductsQueryData? Function(
      _i2.GGetProductsQueryData?, _i2.GGetProductsQueryData?)? get updateResult;
  _i2.GGetProductsQueryData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetProductsQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GGetProductsQueryData.fromJson(json);
  static Serializer<GGetProductsQueryReq> get serializer =>
      _$gGetProductsQueryReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetProductsQueryReq.serializer, this)
          as Map<String, dynamic>);
  static GGetProductsQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetProductsQueryReq.serializer, json);
}
