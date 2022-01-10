// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/add_items_to_cart.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/add_items_to_cart.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/add_items_to_cart.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'add_items_to_cart.req.gql.g.dart';

abstract class GAddItemsToCartReq
    implements
        Built<GAddItemsToCartReq, GAddItemsToCartReqBuilder>,
        _i1.OperationRequest<_i2.GAddItemsToCartData, _i3.GAddItemsToCartVars> {
  GAddItemsToCartReq._();

  factory GAddItemsToCartReq([Function(GAddItemsToCartReqBuilder b) updates]) =
      _$GAddItemsToCartReq;

  static void _initializeBuilder(GAddItemsToCartReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'AddItemsToCart')
    ..executeOnListen = true;
  _i3.GAddItemsToCartVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GAddItemsToCartData? Function(
      _i2.GAddItemsToCartData?, _i2.GAddItemsToCartData?)? get updateResult;
  _i2.GAddItemsToCartData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GAddItemsToCartData? parseData(Map<String, dynamic> json) =>
      _i2.GAddItemsToCartData.fromJson(json);
  static Serializer<GAddItemsToCartReq> get serializer =>
      _$gAddItemsToCartReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GAddItemsToCartReq.serializer, this)
          as Map<String, dynamic>);
  static GAddItemsToCartReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GAddItemsToCartReq.serializer, json);
}
