// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/contact_page_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/contact_page_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/contact_page_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'contact_page_fragment.req.gql.g.dart';

abstract class GContactPageFragmentReq
    implements
        Built<GContactPageFragmentReq, GContactPageFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GContactPageFragmentData,
            _i3.GContactPageFragmentVars> {
  GContactPageFragmentReq._();

  factory GContactPageFragmentReq(
          [Function(GContactPageFragmentReqBuilder b) updates]) =
      _$GContactPageFragmentReq;

  static void _initializeBuilder(GContactPageFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ContactPageFragment';
  _i3.GContactPageFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GContactPageFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GContactPageFragmentData.fromJson(json);
  static Serializer<GContactPageFragmentReq> get serializer =>
      _$gContactPageFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GContactPageFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GContactPageFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GContactPageFragmentReq.serializer, json);
}
