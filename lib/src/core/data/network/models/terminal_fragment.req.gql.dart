// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.var.gql.dart'
    as _i3;

part 'terminal_fragment.req.gql.g.dart';

abstract class GTerminalFragmentReq
    implements
        Built<GTerminalFragmentReq, GTerminalFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GTerminalFragmentData,
            _i3.GTerminalFragmentVars> {
  GTerminalFragmentReq._();

  factory GTerminalFragmentReq(
          [Function(GTerminalFragmentReqBuilder b) updates]) =
      _$GTerminalFragmentReq;

  static void _initializeBuilder(GTerminalFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'TerminalFragment';
  _i3.GTerminalFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GTerminalFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GTerminalFragmentData.fromJson(json);
  static Serializer<GTerminalFragmentReq> get serializer =>
      _$gTerminalFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GTerminalFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GTerminalFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GTerminalFragmentReq.serializer, json);
}
