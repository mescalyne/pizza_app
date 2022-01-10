// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/page_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/page_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/page_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'page_fragment.req.gql.g.dart';

abstract class GPageFragmentReq
    implements
        Built<GPageFragmentReq, GPageFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GPageFragmentData, _i3.GPageFragmentVars> {
  GPageFragmentReq._();

  factory GPageFragmentReq([Function(GPageFragmentReqBuilder b) updates]) =
      _$GPageFragmentReq;

  static void _initializeBuilder(GPageFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'PageFragment';
  _i3.GPageFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GPageFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GPageFragmentData.fromJson(json);
  static Serializer<GPageFragmentReq> get serializer =>
      _$gPageFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GPageFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GPageFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GPageFragmentReq.serializer, json);
}
