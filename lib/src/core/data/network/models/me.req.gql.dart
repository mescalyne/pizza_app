// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/me.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/me.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/me.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'me.req.gql.g.dart';

abstract class GGetCurrentUserReq
    implements
        Built<GGetCurrentUserReq, GGetCurrentUserReqBuilder>,
        _i1.OperationRequest<_i2.GGetCurrentUserData, _i3.GGetCurrentUserVars> {
  GGetCurrentUserReq._();

  factory GGetCurrentUserReq([Function(GGetCurrentUserReqBuilder b) updates]) =
      _$GGetCurrentUserReq;

  static void _initializeBuilder(GGetCurrentUserReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetCurrentUser')
    ..executeOnListen = true;
  _i3.GGetCurrentUserVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetCurrentUserData? Function(
      _i2.GGetCurrentUserData?, _i2.GGetCurrentUserData?)? get updateResult;
  _i2.GGetCurrentUserData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetCurrentUserData? parseData(Map<String, dynamic> json) =>
      _i2.GGetCurrentUserData.fromJson(json);
  static Serializer<GGetCurrentUserReq> get serializer =>
      _$gGetCurrentUserReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetCurrentUserReq.serializer, this)
          as Map<String, dynamic>);
  static GGetCurrentUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetCurrentUserReq.serializer, json);
}
