// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'product_fragment.req.gql.g.dart';

abstract class GProductFragmentReq
    implements
        Built<GProductFragmentReq, GProductFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GProductFragmentData,
            _i3.GProductFragmentVars> {
  GProductFragmentReq._();

  factory GProductFragmentReq(
      [Function(GProductFragmentReqBuilder b) updates]) = _$GProductFragmentReq;

  static void _initializeBuilder(GProductFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ProductFragment';
  _i3.GProductFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GProductFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GProductFragmentData.fromJson(json);
  static Serializer<GProductFragmentReq> get serializer =>
      _$gProductFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GProductFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GProductFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GProductFragmentReq.serializer, json);
}
