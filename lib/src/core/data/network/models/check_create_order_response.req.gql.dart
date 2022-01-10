// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/check_create_order_response.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/check_create_order_response.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/check_create_order_response.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'check_create_order_response.req.gql.g.dart';

abstract class GCheckCreateOrderResponseFragmentReq
    implements
        Built<GCheckCreateOrderResponseFragmentReq,
            GCheckCreateOrderResponseFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GCheckCreateOrderResponseFragmentData,
            _i3.GCheckCreateOrderResponseFragmentVars> {
  GCheckCreateOrderResponseFragmentReq._();

  factory GCheckCreateOrderResponseFragmentReq(
          [Function(GCheckCreateOrderResponseFragmentReqBuilder b) updates]) =
      _$GCheckCreateOrderResponseFragmentReq;

  static void _initializeBuilder(
          GCheckCreateOrderResponseFragmentReqBuilder b) =>
      b
        ..document = _i4.document
        ..fragmentName = 'CheckCreateOrderResponseFragment';
  _i3.GCheckCreateOrderResponseFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GCheckCreateOrderResponseFragmentData? parseData(
          Map<String, dynamic> json) =>
      _i2.GCheckCreateOrderResponseFragmentData.fromJson(json);
  static Serializer<GCheckCreateOrderResponseFragmentReq> get serializer =>
      _$gCheckCreateOrderResponseFragmentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers
          .serializeWith(GCheckCreateOrderResponseFragmentReq.serializer, this)
      as Map<String, dynamic>);
  static GCheckCreateOrderResponseFragmentReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCheckCreateOrderResponseFragmentReq.serializer, json);
}
