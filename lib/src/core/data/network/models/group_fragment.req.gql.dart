// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/group_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/group_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/group_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'group_fragment.req.gql.g.dart';

abstract class GGroupFragmentReq
    implements
        Built<GGroupFragmentReq, GGroupFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GGroupFragmentData, _i3.GGroupFragmentVars> {
  GGroupFragmentReq._();

  factory GGroupFragmentReq([Function(GGroupFragmentReqBuilder b) updates]) =
      _$GGroupFragmentReq;

  static void _initializeBuilder(GGroupFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'GroupFragment';
  _i3.GGroupFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GGroupFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GGroupFragmentData.fromJson(json);
  static Serializer<GGroupFragmentReq> get serializer =>
      _$gGroupFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGroupFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GGroupFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGroupFragmentReq.serializer, json);
}
