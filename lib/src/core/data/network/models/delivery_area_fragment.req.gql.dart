// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/delivery_area_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/delivery_area_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/delivery_area_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'delivery_area_fragment.req.gql.g.dart';

abstract class GDeliveryAreaFragmentReq
    implements
        Built<GDeliveryAreaFragmentReq, GDeliveryAreaFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GDeliveryAreaFragmentData,
            _i3.GDeliveryAreaFragmentVars> {
  GDeliveryAreaFragmentReq._();

  factory GDeliveryAreaFragmentReq(
          [Function(GDeliveryAreaFragmentReqBuilder b) updates]) =
      _$GDeliveryAreaFragmentReq;

  static void _initializeBuilder(GDeliveryAreaFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'DeliveryAreaFragment';
  _i3.GDeliveryAreaFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GDeliveryAreaFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GDeliveryAreaFragmentData.fromJson(json);
  static Serializer<GDeliveryAreaFragmentReq> get serializer =>
      _$gDeliveryAreaFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GDeliveryAreaFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GDeliveryAreaFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GDeliveryAreaFragmentReq.serializer, json);
}
