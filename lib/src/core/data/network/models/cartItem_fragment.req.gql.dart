// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/cartItem_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/cartItem_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/cartItem_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'cartItem_fragment.req.gql.g.dart';

abstract class GCartItemFragmentReq
    implements
        Built<GCartItemFragmentReq, GCartItemFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GCartItemFragmentData,
            _i3.GCartItemFragmentVars> {
  GCartItemFragmentReq._();

  factory GCartItemFragmentReq(
          [Function(GCartItemFragmentReqBuilder b) updates]) =
      _$GCartItemFragmentReq;

  static void _initializeBuilder(GCartItemFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'CartItemFragment';
  _i3.GCartItemFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GCartItemFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GCartItemFragmentData.fromJson(json);
  static Serializer<GCartItemFragmentReq> get serializer =>
      _$gCartItemFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCartItemFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GCartItemFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCartItemFragmentReq.serializer, json);
}
