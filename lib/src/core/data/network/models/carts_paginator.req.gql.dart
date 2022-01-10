// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/carts_paginator.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/carts_paginator.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/carts_paginator.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'carts_paginator.req.gql.g.dart';

abstract class GCartsPaginatorFragmentReq
    implements
        Built<GCartsPaginatorFragmentReq, GCartsPaginatorFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GCartsPaginatorFragmentData,
            _i3.GCartsPaginatorFragmentVars> {
  GCartsPaginatorFragmentReq._();

  factory GCartsPaginatorFragmentReq(
          [Function(GCartsPaginatorFragmentReqBuilder b) updates]) =
      _$GCartsPaginatorFragmentReq;

  static void _initializeBuilder(GCartsPaginatorFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'CartsPaginatorFragment';
  _i3.GCartsPaginatorFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GCartsPaginatorFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GCartsPaginatorFragmentData.fromJson(json);
  static Serializer<GCartsPaginatorFragmentReq> get serializer =>
      _$gCartsPaginatorFragmentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartsPaginatorFragmentReq.serializer, this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GCartsPaginatorFragmentReq.serializer, json);
}
