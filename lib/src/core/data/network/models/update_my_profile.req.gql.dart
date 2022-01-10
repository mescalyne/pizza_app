// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;
import 'package:toto_mobile/src/core/data/network/models/update_my_profile.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/update_my_profile.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/update_my_profile.var.gql.dart'
    as _i3;

part 'update_my_profile.req.gql.g.dart';

abstract class GupdateCurrentUserReq
    implements
        Built<GupdateCurrentUserReq, GupdateCurrentUserReqBuilder>,
        _i1.OperationRequest<_i2.GupdateCurrentUserData,
            _i3.GupdateCurrentUserVars> {
  GupdateCurrentUserReq._();

  factory GupdateCurrentUserReq(
          [Function(GupdateCurrentUserReqBuilder b) updates]) =
      _$GupdateCurrentUserReq;

  static void _initializeBuilder(GupdateCurrentUserReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'updateCurrentUser')
    ..executeOnListen = true;
  _i3.GupdateCurrentUserVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GupdateCurrentUserData? Function(
          _i2.GupdateCurrentUserData?, _i2.GupdateCurrentUserData?)?
      get updateResult;
  _i2.GupdateCurrentUserData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GupdateCurrentUserData? parseData(Map<String, dynamic> json) =>
      _i2.GupdateCurrentUserData.fromJson(json);
  static Serializer<GupdateCurrentUserReq> get serializer =>
      _$gupdateCurrentUserReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GupdateCurrentUserReq.serializer, this)
          as Map<String, dynamic>);
  static GupdateCurrentUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GupdateCurrentUserReq.serializer, json);
}
