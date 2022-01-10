// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'products_size_fragment.req.gql.g.dart';

abstract class GProductsSizesFragmentReq
    implements
        Built<GProductsSizesFragmentReq, GProductsSizesFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GProductsSizesFragmentData,
            _i3.GProductsSizesFragmentVars> {
  GProductsSizesFragmentReq._();

  factory GProductsSizesFragmentReq(
          [Function(GProductsSizesFragmentReqBuilder b) updates]) =
      _$GProductsSizesFragmentReq;

  static void _initializeBuilder(GProductsSizesFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ProductsSizesFragment';
  _i3.GProductsSizesFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GProductsSizesFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GProductsSizesFragmentData.fromJson(json);
  static Serializer<GProductsSizesFragmentReq> get serializer =>
      _$gProductsSizesFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GProductsSizesFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GProductsSizesFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GProductsSizesFragmentReq.serializer, json);
}
