// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/edit_cart_item.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/edit_cart_item.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/edit_cart_item.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'edit_cart_item.req.gql.g.dart';

abstract class GEditCartItemReq
    implements
        Built<GEditCartItemReq, GEditCartItemReqBuilder>,
        _i1.OperationRequest<_i2.GEditCartItemData, _i3.GEditCartItemVars> {
  GEditCartItemReq._();

  factory GEditCartItemReq([Function(GEditCartItemReqBuilder b) updates]) =
      _$GEditCartItemReq;

  static void _initializeBuilder(GEditCartItemReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'EditCartItem')
    ..executeOnListen = true;
  _i3.GEditCartItemVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GEditCartItemData? Function(
      _i2.GEditCartItemData?, _i2.GEditCartItemData?)? get updateResult;
  _i2.GEditCartItemData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GEditCartItemData? parseData(Map<String, dynamic> json) =>
      _i2.GEditCartItemData.fromJson(json);
  static Serializer<GEditCartItemReq> get serializer =>
      _$gEditCartItemReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GEditCartItemReq.serializer, this)
          as Map<String, dynamic>);
  static GEditCartItemReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GEditCartItemReq.serializer, json);
}
