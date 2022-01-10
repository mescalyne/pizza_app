// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/remove_cart.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/remove_cart.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/remove_cart.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'remove_cart.req.gql.g.dart';

abstract class GRemoveCartReq
    implements
        Built<GRemoveCartReq, GRemoveCartReqBuilder>,
        _i1.OperationRequest<_i2.GRemoveCartData, _i3.GRemoveCartVars> {
  GRemoveCartReq._();

  factory GRemoveCartReq([Function(GRemoveCartReqBuilder b) updates]) =
      _$GRemoveCartReq;

  static void _initializeBuilder(GRemoveCartReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'RemoveCart')
    ..executeOnListen = true;
  _i3.GRemoveCartVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GRemoveCartData? Function(_i2.GRemoveCartData?, _i2.GRemoveCartData?)?
      get updateResult;
  _i2.GRemoveCartData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GRemoveCartData? parseData(Map<String, dynamic> json) =>
      _i2.GRemoveCartData.fromJson(json);
  static Serializer<GRemoveCartReq> get serializer =>
      _$gRemoveCartReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GRemoveCartReq.serializer, this)
          as Map<String, dynamic>);
  static GRemoveCartReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GRemoveCartReq.serializer, json);
}
