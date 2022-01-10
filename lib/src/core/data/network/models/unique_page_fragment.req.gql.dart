// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;
import 'package:toto_mobile/src/core/data/network/models/unique_page_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/unique_page_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/unique_page_fragment.var.gql.dart'
    as _i3;

part 'unique_page_fragment.req.gql.g.dart';

abstract class GUniquePageFragmentReq
    implements
        Built<GUniquePageFragmentReq, GUniquePageFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GUniquePageFragmentData,
            _i3.GUniquePageFragmentVars> {
  GUniquePageFragmentReq._();

  factory GUniquePageFragmentReq(
          [Function(GUniquePageFragmentReqBuilder b) updates]) =
      _$GUniquePageFragmentReq;

  static void _initializeBuilder(GUniquePageFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'UniquePageFragment';
  _i3.GUniquePageFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GUniquePageFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GUniquePageFragmentData.fromJson(json);
  static Serializer<GUniquePageFragmentReq> get serializer =>
      _$gUniquePageFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GUniquePageFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GUniquePageFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GUniquePageFragmentReq.serializer, json);
}
