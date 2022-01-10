// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/remove_item_from_cart.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/remove_item_from_cart.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/remove_item_from_cart.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'remove_item_from_cart.req.gql.g.dart';

abstract class GRemoveItemFromCartReq
    implements
        Built<GRemoveItemFromCartReq, GRemoveItemFromCartReqBuilder>,
        _i1.OperationRequest<_i2.GRemoveItemFromCartData,
            _i3.GRemoveItemFromCartVars> {
  GRemoveItemFromCartReq._();

  factory GRemoveItemFromCartReq(
          [Function(GRemoveItemFromCartReqBuilder b) updates]) =
      _$GRemoveItemFromCartReq;

  static void _initializeBuilder(GRemoveItemFromCartReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'RemoveItemFromCart')
    ..executeOnListen = true;
  _i3.GRemoveItemFromCartVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GRemoveItemFromCartData? Function(
          _i2.GRemoveItemFromCartData?, _i2.GRemoveItemFromCartData?)?
      get updateResult;
  _i2.GRemoveItemFromCartData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GRemoveItemFromCartData? parseData(Map<String, dynamic> json) =>
      _i2.GRemoveItemFromCartData.fromJson(json);
  static Serializer<GRemoveItemFromCartReq> get serializer =>
      _$gRemoveItemFromCartReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GRemoveItemFromCartReq.serializer, this)
          as Map<String, dynamic>);
  static GRemoveItemFromCartReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GRemoveItemFromCartReq.serializer, json);
}
