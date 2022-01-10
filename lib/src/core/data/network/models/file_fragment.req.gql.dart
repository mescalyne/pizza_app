// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/file_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/file_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/file_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'file_fragment.req.gql.g.dart';

abstract class GFileFragmentReq
    implements
        Built<GFileFragmentReq, GFileFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GFileFragmentData, _i3.GFileFragmentVars> {
  GFileFragmentReq._();

  factory GFileFragmentReq([Function(GFileFragmentReqBuilder b) updates]) =
      _$GFileFragmentReq;

  static void _initializeBuilder(GFileFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'FileFragment';
  _i3.GFileFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GFileFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GFileFragmentData.fromJson(json);
  static Serializer<GFileFragmentReq> get serializer =>
      _$gFileFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GFileFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GFileFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFileFragmentReq.serializer, json);
}
