// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'cartItem_modifier_fragment.req.gql.g.dart';

abstract class GCartItemModifierFragmentReq
    implements
        Built<GCartItemModifierFragmentReq,
            GCartItemModifierFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GCartItemModifierFragmentData,
            _i3.GCartItemModifierFragmentVars> {
  GCartItemModifierFragmentReq._();

  factory GCartItemModifierFragmentReq(
          [Function(GCartItemModifierFragmentReqBuilder b) updates]) =
      _$GCartItemModifierFragmentReq;

  static void _initializeBuilder(GCartItemModifierFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'CartItemModifierFragment';
  _i3.GCartItemModifierFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GCartItemModifierFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GCartItemModifierFragmentData.fromJson(json);
  static Serializer<GCartItemModifierFragmentReq> get serializer =>
      _$gCartItemModifierFragmentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemModifierFragmentReq.serializer, this) as Map<String, dynamic>);
  static GCartItemModifierFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GCartItemModifierFragmentReq.serializer, json);
}
