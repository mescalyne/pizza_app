// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_group.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_group.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_group.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_group.req.gql.g.dart';

abstract class GGetGroupQueryReq
    implements
        Built<GGetGroupQueryReq, GGetGroupQueryReqBuilder>,
        _i1.OperationRequest<_i2.GGetGroupQueryData, _i3.GGetGroupQueryVars> {
  GGetGroupQueryReq._();

  factory GGetGroupQueryReq([Function(GGetGroupQueryReqBuilder b) updates]) =
      _$GGetGroupQueryReq;

  static void _initializeBuilder(GGetGroupQueryReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetGroupQuery')
    ..executeOnListen = true;
  _i3.GGetGroupQueryVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetGroupQueryData? Function(
      _i2.GGetGroupQueryData?, _i2.GGetGroupQueryData?)? get updateResult;
  _i2.GGetGroupQueryData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetGroupQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GGetGroupQueryData.fromJson(json);
  static Serializer<GGetGroupQueryReq> get serializer =>
      _$gGetGroupQueryReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetGroupQueryReq.serializer, this)
          as Map<String, dynamic>);
  static GGetGroupQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetGroupQueryReq.serializer, json);
}
