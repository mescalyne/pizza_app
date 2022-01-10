// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'group_modificator_fragment.req.gql.g.dart';

abstract class GGroupModificatorFragmentReq
    implements
        Built<GGroupModificatorFragmentReq,
            GGroupModificatorFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GGroupModificatorFragmentData,
            _i3.GGroupModificatorFragmentVars> {
  GGroupModificatorFragmentReq._();

  factory GGroupModificatorFragmentReq(
          [Function(GGroupModificatorFragmentReqBuilder b) updates]) =
      _$GGroupModificatorFragmentReq;

  static void _initializeBuilder(GGroupModificatorFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'GroupModificatorFragment';
  _i3.GGroupModificatorFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GGroupModificatorFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GGroupModificatorFragmentData.fromJson(json);
  static Serializer<GGroupModificatorFragmentReq> get serializer =>
      _$gGroupModificatorFragmentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GGroupModificatorFragmentReq.serializer, this) as Map<String, dynamic>);
  static GGroupModificatorFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GGroupModificatorFragmentReq.serializer, json);
}
