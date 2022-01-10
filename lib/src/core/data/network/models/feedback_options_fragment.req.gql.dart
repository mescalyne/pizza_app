// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/feedback_options_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/feedback_options_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/feedback_options_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'feedback_options_fragment.req.gql.g.dart';

abstract class GFeedbackOptionFragmentReq
    implements
        Built<GFeedbackOptionFragmentReq, GFeedbackOptionFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GFeedbackOptionFragmentData,
            _i3.GFeedbackOptionFragmentVars> {
  GFeedbackOptionFragmentReq._();

  factory GFeedbackOptionFragmentReq(
          [Function(GFeedbackOptionFragmentReqBuilder b) updates]) =
      _$GFeedbackOptionFragmentReq;

  static void _initializeBuilder(GFeedbackOptionFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'FeedbackOptionFragment';
  _i3.GFeedbackOptionFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GFeedbackOptionFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GFeedbackOptionFragmentData.fromJson(json);
  static Serializer<GFeedbackOptionFragmentReq> get serializer =>
      _$gFeedbackOptionFragmentReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GFeedbackOptionFragmentReq.serializer, this) as Map<String, dynamic>);
  static GFeedbackOptionFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GFeedbackOptionFragmentReq.serializer, json);
}
