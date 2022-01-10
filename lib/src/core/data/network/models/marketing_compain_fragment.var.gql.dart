// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'marketing_compain_fragment.var.gql.g.dart';

abstract class GMarketingCompaignFragmentVars
    implements
        Built<GMarketingCompaignFragmentVars,
            GMarketingCompaignFragmentVarsBuilder> {
  GMarketingCompaignFragmentVars._();

  factory GMarketingCompaignFragmentVars(
          [Function(GMarketingCompaignFragmentVarsBuilder b) updates]) =
      _$GMarketingCompaignFragmentVars;

  static Serializer<GMarketingCompaignFragmentVars> get serializer =>
      _$gMarketingCompaignFragmentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GMarketingCompaignFragmentVars.serializer, this) as Map<String, dynamic>);
  static GMarketingCompaignFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GMarketingCompaignFragmentVars.serializer, json);
}
