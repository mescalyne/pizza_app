// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_recommended_products_for_cart.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_recommended_products_for_cart.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_recommended_products_for_cart.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_recommended_products_for_cart.req.gql.g.dart';

abstract class GGetRecommendedProductsForCartReq
    implements
        Built<GGetRecommendedProductsForCartReq,
            GGetRecommendedProductsForCartReqBuilder>,
        _i1.OperationRequest<_i2.GGetRecommendedProductsForCartData,
            _i3.GGetRecommendedProductsForCartVars> {
  GGetRecommendedProductsForCartReq._();

  factory GGetRecommendedProductsForCartReq(
          [Function(GGetRecommendedProductsForCartReqBuilder b) updates]) =
      _$GGetRecommendedProductsForCartReq;

  static void _initializeBuilder(GGetRecommendedProductsForCartReqBuilder b) =>
      b
        ..operation = _i4.Operation(
            document: _i5.document,
            operationName: 'GetRecommendedProductsForCart')
        ..executeOnListen = true;
  _i3.GGetRecommendedProductsForCartVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetRecommendedProductsForCartData? Function(
      _i2.GGetRecommendedProductsForCartData?,
      _i2.GGetRecommendedProductsForCartData?)? get updateResult;
  _i2.GGetRecommendedProductsForCartData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetRecommendedProductsForCartData? parseData(
          Map<String, dynamic> json) =>
      _i2.GGetRecommendedProductsForCartData.fromJson(json);
  static Serializer<GGetRecommendedProductsForCartReq> get serializer =>
      _$gGetRecommendedProductsForCartReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers
          .serializeWith(GGetRecommendedProductsForCartReq.serializer, this)
      as Map<String, dynamic>);
  static GGetRecommendedProductsForCartReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GGetRecommendedProductsForCartReq.serializer, json);
}
