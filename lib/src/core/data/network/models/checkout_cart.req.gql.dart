// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/checkout_cart.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/checkout_cart.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/checkout_cart.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'checkout_cart.req.gql.g.dart';

abstract class GCheckoutCartReq
    implements
        Built<GCheckoutCartReq, GCheckoutCartReqBuilder>,
        _i1.OperationRequest<_i2.GCheckoutCartData, _i3.GCheckoutCartVars> {
  GCheckoutCartReq._();

  factory GCheckoutCartReq([Function(GCheckoutCartReqBuilder b) updates]) =
      _$GCheckoutCartReq;

  static void _initializeBuilder(GCheckoutCartReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'CheckoutCart')
    ..executeOnListen = true;
  _i3.GCheckoutCartVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCheckoutCartData? Function(
      _i2.GCheckoutCartData?, _i2.GCheckoutCartData?)? get updateResult;
  _i2.GCheckoutCartData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCheckoutCartData? parseData(Map<String, dynamic> json) =>
      _i2.GCheckoutCartData.fromJson(json);
  static Serializer<GCheckoutCartReq> get serializer =>
      _$gCheckoutCartReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCheckoutCartReq.serializer, this)
          as Map<String, dynamic>);
  static GCheckoutCartReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCheckoutCartReq.serializer, json);
}
