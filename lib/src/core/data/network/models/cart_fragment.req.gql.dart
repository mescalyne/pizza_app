// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/cart_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/cart_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/cart_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'cart_fragment.req.gql.g.dart';

abstract class GCartFragmentReq
    implements
        Built<GCartFragmentReq, GCartFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GCartFragmentData, _i3.GCartFragmentVars> {
  GCartFragmentReq._();

  factory GCartFragmentReq([Function(GCartFragmentReqBuilder b) updates]) =
      _$GCartFragmentReq;

  static void _initializeBuilder(GCartFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'CartFragment';
  _i3.GCartFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GCartFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GCartFragmentData.fromJson(json);
  static Serializer<GCartFragmentReq> get serializer =>
      _$gCartFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCartFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GCartFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCartFragmentReq.serializer, json);
}
