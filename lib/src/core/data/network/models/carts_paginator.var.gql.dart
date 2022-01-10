// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'carts_paginator.var.gql.g.dart';

abstract class GCartsPaginatorFragmentVars
    implements
        Built<GCartsPaginatorFragmentVars, GCartsPaginatorFragmentVarsBuilder> {
  GCartsPaginatorFragmentVars._();

  factory GCartsPaginatorFragmentVars(
          [Function(GCartsPaginatorFragmentVarsBuilder b) updates]) =
      _$GCartsPaginatorFragmentVars;

  static Serializer<GCartsPaginatorFragmentVars> get serializer =>
      _$gCartsPaginatorFragmentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCartsPaginatorFragmentVars.serializer, this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCartsPaginatorFragmentVars.serializer, json);
}
