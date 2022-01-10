// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/auth_guest.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/auth_guest.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/auth_guest.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'auth_guest.req.gql.g.dart';

abstract class GauthGuestReq
    implements
        Built<GauthGuestReq, GauthGuestReqBuilder>,
        _i1.OperationRequest<_i2.GauthGuestData, _i3.GauthGuestVars> {
  GauthGuestReq._();

  factory GauthGuestReq([Function(GauthGuestReqBuilder b) updates]) =
      _$GauthGuestReq;

  static void _initializeBuilder(GauthGuestReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'authGuest')
    ..executeOnListen = true;
  _i3.GauthGuestVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GauthGuestData? Function(_i2.GauthGuestData?, _i2.GauthGuestData?)?
      get updateResult;
  _i2.GauthGuestData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GauthGuestData? parseData(Map<String, dynamic> json) =>
      _i2.GauthGuestData.fromJson(json);
  static Serializer<GauthGuestReq> get serializer => _$gauthGuestReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GauthGuestReq.serializer, this)
          as Map<String, dynamic>);
  static GauthGuestReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GauthGuestReq.serializer, json);
}
