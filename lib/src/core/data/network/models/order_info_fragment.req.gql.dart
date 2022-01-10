// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/order_info_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/order_info_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/order_info_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'order_info_fragment.req.gql.g.dart';

abstract class GOrderInfoFragmentReq
    implements
        Built<GOrderInfoFragmentReq, GOrderInfoFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GOrderInfoFragmentData,
            _i3.GOrderInfoFragmentVars> {
  GOrderInfoFragmentReq._();

  factory GOrderInfoFragmentReq(
          [Function(GOrderInfoFragmentReqBuilder b) updates]) =
      _$GOrderInfoFragmentReq;

  static void _initializeBuilder(GOrderInfoFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'OrderInfoFragment';
  _i3.GOrderInfoFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GOrderInfoFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GOrderInfoFragmentData.fromJson(json);
  static Serializer<GOrderInfoFragmentReq> get serializer =>
      _$gOrderInfoFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GOrderInfoFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GOrderInfoFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GOrderInfoFragmentReq.serializer, json);
}
