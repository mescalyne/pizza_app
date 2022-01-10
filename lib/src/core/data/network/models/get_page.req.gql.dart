// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_page.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_page.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_page.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_page.req.gql.g.dart';

abstract class GGetPageQueryReq
    implements
        Built<GGetPageQueryReq, GGetPageQueryReqBuilder>,
        _i1.OperationRequest<_i2.GGetPageQueryData, _i3.GGetPageQueryVars> {
  GGetPageQueryReq._();

  factory GGetPageQueryReq([Function(GGetPageQueryReqBuilder b) updates]) =
      _$GGetPageQueryReq;

  static void _initializeBuilder(GGetPageQueryReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetPageQuery')
    ..executeOnListen = true;
  _i3.GGetPageQueryVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetPageQueryData? Function(
      _i2.GGetPageQueryData?, _i2.GGetPageQueryData?)? get updateResult;
  _i2.GGetPageQueryData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetPageQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GGetPageQueryData.fromJson(json);
  static Serializer<GGetPageQueryReq> get serializer =>
      _$gGetPageQueryReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetPageQueryReq.serializer, this)
          as Map<String, dynamic>);
  static GGetPageQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetPageQueryReq.serializer, json);
}
