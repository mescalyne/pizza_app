// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'delivery_address_fragment.req.gql.g.dart';

abstract class GDeliveryAddressFragmentReq
    implements
        Built<GDeliveryAddressFragmentReq, GDeliveryAddressFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GDeliveryAddressFragmentData,
            _i3.GDeliveryAddressFragmentVars> {
  GDeliveryAddressFragmentReq._();

  factory GDeliveryAddressFragmentReq(
          [Function(GDeliveryAddressFragmentReqBuilder b) updates]) =
      _$GDeliveryAddressFragmentReq;

  static void _initializeBuilder(GDeliveryAddressFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'DeliveryAddressFragment';
  _i3.GDeliveryAddressFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GDeliveryAddressFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GDeliveryAddressFragmentData.fromJson(json);
  static Serializer<GDeliveryAddressFragmentReq> get serializer =>
      _$gDeliveryAddressFragmentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GDeliveryAddressFragmentReq.serializer, this) as Map<String, dynamic>);
  static GDeliveryAddressFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GDeliveryAddressFragmentReq.serializer, json);
}
