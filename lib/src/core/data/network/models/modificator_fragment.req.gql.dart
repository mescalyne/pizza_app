// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'modificator_fragment.req.gql.g.dart';

abstract class GModificatorFragmentReq
    implements
        Built<GModificatorFragmentReq, GModificatorFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GModificatorFragmentData,
            _i3.GModificatorFragmentVars> {
  GModificatorFragmentReq._();

  factory GModificatorFragmentReq(
          [Function(GModificatorFragmentReqBuilder b) updates]) =
      _$GModificatorFragmentReq;

  static void _initializeBuilder(GModificatorFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ModificatorFragment';
  _i3.GModificatorFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GModificatorFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GModificatorFragmentData.fromJson(json);
  static Serializer<GModificatorFragmentReq> get serializer =>
      _$gModificatorFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GModificatorFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GModificatorFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GModificatorFragmentReq.serializer, json);
}
