// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_compaigns.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_compaigns.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_compaigns.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_compaigns.req.gql.g.dart';

abstract class GGetCompaignsReq
    implements
        Built<GGetCompaignsReq, GGetCompaignsReqBuilder>,
        _i1.OperationRequest<_i2.GGetCompaignsData, _i3.GGetCompaignsVars> {
  GGetCompaignsReq._();

  factory GGetCompaignsReq([Function(GGetCompaignsReqBuilder b) updates]) =
      _$GGetCompaignsReq;

  static void _initializeBuilder(GGetCompaignsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetCompaigns')
    ..executeOnListen = true;
  _i3.GGetCompaignsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetCompaignsData? Function(
      _i2.GGetCompaignsData?, _i2.GGetCompaignsData?)? get updateResult;
  _i2.GGetCompaignsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetCompaignsData? parseData(Map<String, dynamic> json) =>
      _i2.GGetCompaignsData.fromJson(json);
  static Serializer<GGetCompaignsReq> get serializer =>
      _$gGetCompaignsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetCompaignsReq.serializer, this)
          as Map<String, dynamic>);
  static GGetCompaignsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetCompaignsReq.serializer, json);
}
