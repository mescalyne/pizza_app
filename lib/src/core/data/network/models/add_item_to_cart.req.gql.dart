// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/add_item_to_cart.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/add_item_to_cart.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/add_item_to_cart.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'add_item_to_cart.req.gql.g.dart';

abstract class GAddItemToCartReq
    implements
        Built<GAddItemToCartReq, GAddItemToCartReqBuilder>,
        _i1.OperationRequest<_i2.GAddItemToCartData, _i3.GAddItemToCartVars> {
  GAddItemToCartReq._();

  factory GAddItemToCartReq([Function(GAddItemToCartReqBuilder b) updates]) =
      _$GAddItemToCartReq;

  static void _initializeBuilder(GAddItemToCartReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'AddItemToCart')
    ..executeOnListen = true;
  _i3.GAddItemToCartVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GAddItemToCartData? Function(
      _i2.GAddItemToCartData?, _i2.GAddItemToCartData?)? get updateResult;
  _i2.GAddItemToCartData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GAddItemToCartData? parseData(Map<String, dynamic> json) =>
      _i2.GAddItemToCartData.fromJson(json);
  static Serializer<GAddItemToCartReq> get serializer =>
      _$gAddItemToCartReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GAddItemToCartReq.serializer, this)
          as Map<String, dynamic>);
  static GAddItemToCartReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GAddItemToCartReq.serializer, json);
}
