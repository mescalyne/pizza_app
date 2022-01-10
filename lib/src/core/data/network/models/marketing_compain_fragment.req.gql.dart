// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/marketing_compain_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/marketing_compain_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/marketing_compain_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'marketing_compain_fragment.req.gql.g.dart';

abstract class GMarketingCompaignFragmentReq
    implements
        Built<GMarketingCompaignFragmentReq,
            GMarketingCompaignFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GMarketingCompaignFragmentData,
            _i3.GMarketingCompaignFragmentVars> {
  GMarketingCompaignFragmentReq._();

  factory GMarketingCompaignFragmentReq(
          [Function(GMarketingCompaignFragmentReqBuilder b) updates]) =
      _$GMarketingCompaignFragmentReq;

  static void _initializeBuilder(GMarketingCompaignFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'MarketingCompaignFragment';
  _i3.GMarketingCompaignFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GMarketingCompaignFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GMarketingCompaignFragmentData.fromJson(json);
  static Serializer<GMarketingCompaignFragmentReq> get serializer =>
      _$gMarketingCompaignFragmentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GMarketingCompaignFragmentReq.serializer, this) as Map<String, dynamic>);
  static GMarketingCompaignFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GMarketingCompaignFragmentReq.serializer, json);
}
