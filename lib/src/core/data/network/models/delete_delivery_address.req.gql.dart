// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/delete_delivery_address.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/delete_delivery_address.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/delete_delivery_address.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'delete_delivery_address.req.gql.g.dart';

abstract class GDeleteDeliveryAddressReq
    implements
        Built<GDeleteDeliveryAddressReq, GDeleteDeliveryAddressReqBuilder>,
        _i1.OperationRequest<_i2.GDeleteDeliveryAddressData,
            _i3.GDeleteDeliveryAddressVars> {
  GDeleteDeliveryAddressReq._();

  factory GDeleteDeliveryAddressReq(
          [Function(GDeleteDeliveryAddressReqBuilder b) updates]) =
      _$GDeleteDeliveryAddressReq;

  static void _initializeBuilder(GDeleteDeliveryAddressReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'DeleteDeliveryAddress')
    ..executeOnListen = true;
  _i3.GDeleteDeliveryAddressVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GDeleteDeliveryAddressData? Function(
          _i2.GDeleteDeliveryAddressData?, _i2.GDeleteDeliveryAddressData?)?
      get updateResult;
  _i2.GDeleteDeliveryAddressData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GDeleteDeliveryAddressData? parseData(Map<String, dynamic> json) =>
      _i2.GDeleteDeliveryAddressData.fromJson(json);
  static Serializer<GDeleteDeliveryAddressReq> get serializer =>
      _$gDeleteDeliveryAddressReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GDeleteDeliveryAddressReq.serializer, this)
          as Map<String, dynamic>);
  static GDeleteDeliveryAddressReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GDeleteDeliveryAddressReq.serializer, json);
}
