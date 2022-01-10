// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_groups.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_groups.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_groups.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_groups.req.gql.g.dart';

abstract class GGetGroupsQueryReq
    implements
        Built<GGetGroupsQueryReq, GGetGroupsQueryReqBuilder>,
        _i1.OperationRequest<_i2.GGetGroupsQueryData, _i3.GGetGroupsQueryVars> {
  GGetGroupsQueryReq._();

  factory GGetGroupsQueryReq([Function(GGetGroupsQueryReqBuilder b) updates]) =
      _$GGetGroupsQueryReq;

  static void _initializeBuilder(GGetGroupsQueryReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetGroupsQuery')
    ..executeOnListen = true;
  _i3.GGetGroupsQueryVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetGroupsQueryData? Function(
      _i2.GGetGroupsQueryData?, _i2.GGetGroupsQueryData?)? get updateResult;
  _i2.GGetGroupsQueryData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetGroupsQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GGetGroupsQueryData.fromJson(json);
  static Serializer<GGetGroupsQueryReq> get serializer =>
      _$gGetGroupsQueryReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetGroupsQueryReq.serializer, this)
          as Map<String, dynamic>);
  static GGetGroupsQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetGroupsQueryReq.serializer, json);
}
