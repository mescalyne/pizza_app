// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_cart.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_cart.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_cart.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_cart.req.gql.g.dart';

abstract class GGetCartQueryReq
    implements
        Built<GGetCartQueryReq, GGetCartQueryReqBuilder>,
        _i1.OperationRequest<_i2.GGetCartQueryData, _i3.GGetCartQueryVars> {
  GGetCartQueryReq._();

  factory GGetCartQueryReq([Function(GGetCartQueryReqBuilder b) updates]) =
      _$GGetCartQueryReq;

  static void _initializeBuilder(GGetCartQueryReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetCartQuery')
    ..executeOnListen = true;
  _i3.GGetCartQueryVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetCartQueryData? Function(
      _i2.GGetCartQueryData?, _i2.GGetCartQueryData?)? get updateResult;
  _i2.GGetCartQueryData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetCartQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GGetCartQueryData.fromJson(json);
  static Serializer<GGetCartQueryReq> get serializer =>
      _$gGetCartQueryReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetCartQueryReq.serializer, this)
          as Map<String, dynamic>);
  static GGetCartQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetCartQueryReq.serializer, json);
}
