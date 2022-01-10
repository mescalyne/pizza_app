// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'terminal_fragment.var.gql.g.dart';

abstract class GTerminalFragmentVars
    implements Built<GTerminalFragmentVars, GTerminalFragmentVarsBuilder> {
  GTerminalFragmentVars._();

  factory GTerminalFragmentVars(
          [Function(GTerminalFragmentVarsBuilder b) updates]) =
      _$GTerminalFragmentVars;

  static Serializer<GTerminalFragmentVars> get serializer =>
      _$gTerminalFragmentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GTerminalFragmentVars.serializer, this)
          as Map<String, dynamic>);
  static GTerminalFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GTerminalFragmentVars.serializer, json);
}
