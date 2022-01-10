// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'city_fragment.req.gql.g.dart';

abstract class GCityFragmentReq
    implements
        Built<GCityFragmentReq, GCityFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GCityFragmentData, _i3.GCityFragmentVars> {
  GCityFragmentReq._();

  factory GCityFragmentReq([Function(GCityFragmentReqBuilder b) updates]) =
      _$GCityFragmentReq;

  static void _initializeBuilder(GCityFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'CityFragment';
  _i3.GCityFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GCityFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GCityFragmentData.fromJson(json);
  static Serializer<GCityFragmentReq> get serializer =>
      _$gCityFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCityFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GCityFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCityFragmentReq.serializer, json);
}
