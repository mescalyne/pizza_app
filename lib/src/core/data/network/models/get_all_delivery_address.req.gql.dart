// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_all_delivery_address.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_all_delivery_address.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_all_delivery_address.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_all_delivery_address.req.gql.g.dart';

abstract class GGetAllDeliveryAddressesReq
    implements
        Built<GGetAllDeliveryAddressesReq, GGetAllDeliveryAddressesReqBuilder>,
        _i1.OperationRequest<_i2.GGetAllDeliveryAddressesData,
            _i3.GGetAllDeliveryAddressesVars> {
  GGetAllDeliveryAddressesReq._();

  factory GGetAllDeliveryAddressesReq(
          [Function(GGetAllDeliveryAddressesReqBuilder b) updates]) =
      _$GGetAllDeliveryAddressesReq;

  static void _initializeBuilder(GGetAllDeliveryAddressesReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'GetAllDeliveryAddresses')
    ..executeOnListen = true;
  _i3.GGetAllDeliveryAddressesVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetAllDeliveryAddressesData? Function(
          _i2.GGetAllDeliveryAddressesData?, _i2.GGetAllDeliveryAddressesData?)?
      get updateResult;
  _i2.GGetAllDeliveryAddressesData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetAllDeliveryAddressesData? parseData(Map<String, dynamic> json) =>
      _i2.GGetAllDeliveryAddressesData.fromJson(json);
  static Serializer<GGetAllDeliveryAddressesReq> get serializer =>
      _$gGetAllDeliveryAddressesReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GGetAllDeliveryAddressesReq.serializer, this) as Map<String, dynamic>);
  static GGetAllDeliveryAddressesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GGetAllDeliveryAddressesReq.serializer, json);
}
