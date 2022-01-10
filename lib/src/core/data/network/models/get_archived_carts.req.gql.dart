// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_archived_carts.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_archived_carts.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_archived_carts.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_archived_carts.req.gql.g.dart';

abstract class GGetArchivedCartsQueryReq
    implements
        Built<GGetArchivedCartsQueryReq, GGetArchivedCartsQueryReqBuilder>,
        _i1.OperationRequest<_i2.GGetArchivedCartsQueryData,
            _i3.GGetArchivedCartsQueryVars> {
  GGetArchivedCartsQueryReq._();

  factory GGetArchivedCartsQueryReq(
          [Function(GGetArchivedCartsQueryReqBuilder b) updates]) =
      _$GGetArchivedCartsQueryReq;

  static void _initializeBuilder(GGetArchivedCartsQueryReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'GetArchivedCartsQuery')
    ..executeOnListen = true;
  _i3.GGetArchivedCartsQueryVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetArchivedCartsQueryData? Function(
          _i2.GGetArchivedCartsQueryData?, _i2.GGetArchivedCartsQueryData?)?
      get updateResult;
  _i2.GGetArchivedCartsQueryData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetArchivedCartsQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GGetArchivedCartsQueryData.fromJson(json);
  static Serializer<GGetArchivedCartsQueryReq> get serializer =>
      _$gGetArchivedCartsQueryReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetArchivedCartsQueryReq.serializer, this)
          as Map<String, dynamic>);
  static GGetArchivedCartsQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GGetArchivedCartsQueryReq.serializer, json);
}
