// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/paginator_info_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/paginator_info_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/paginator_info_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'paginator_info_fragment.req.gql.g.dart';

abstract class GPaginatorInfoFragmentReq
    implements
        Built<GPaginatorInfoFragmentReq, GPaginatorInfoFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GPaginatorInfoFragmentData,
            _i3.GPaginatorInfoFragmentVars> {
  GPaginatorInfoFragmentReq._();

  factory GPaginatorInfoFragmentReq(
          [Function(GPaginatorInfoFragmentReqBuilder b) updates]) =
      _$GPaginatorInfoFragmentReq;

  static void _initializeBuilder(GPaginatorInfoFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'PaginatorInfoFragment';
  _i3.GPaginatorInfoFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GPaginatorInfoFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GPaginatorInfoFragmentData.fromJson(json);
  static Serializer<GPaginatorInfoFragmentReq> get serializer =>
      _$gPaginatorInfoFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GPaginatorInfoFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GPaginatorInfoFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GPaginatorInfoFragmentReq.serializer, json);
}
