// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/checkout_cart_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/checkout_cart_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/checkout_cart_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'checkout_cart_fragment.req.gql.g.dart';

abstract class GCheckoutResponseFragmentReq
    implements
        Built<GCheckoutResponseFragmentReq,
            GCheckoutResponseFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GCheckoutResponseFragmentData,
            _i3.GCheckoutResponseFragmentVars> {
  GCheckoutResponseFragmentReq._();

  factory GCheckoutResponseFragmentReq(
          [Function(GCheckoutResponseFragmentReqBuilder b) updates]) =
      _$GCheckoutResponseFragmentReq;

  static void _initializeBuilder(GCheckoutResponseFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'CheckoutResponseFragment';
  _i3.GCheckoutResponseFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GCheckoutResponseFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GCheckoutResponseFragmentData.fromJson(json);
  static Serializer<GCheckoutResponseFragmentReq> get serializer =>
      _$gCheckoutResponseFragmentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCheckoutResponseFragmentReq.serializer, this) as Map<String, dynamic>);
  static GCheckoutResponseFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GCheckoutResponseFragmentReq.serializer, json);
}
