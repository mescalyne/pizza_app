// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_feedback_options.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetFeedbackOptionsVars> _$gGetFeedbackOptionsVarsSerializer =
    new _$GGetFeedbackOptionsVarsSerializer();

class _$GGetFeedbackOptionsVarsSerializer
    implements StructuredSerializer<GGetFeedbackOptionsVars> {
  @override
  final Iterable<Type> types = const [
    GGetFeedbackOptionsVars,
    _$GGetFeedbackOptionsVars
  ];
  @override
  final String wireName = 'GGetFeedbackOptionsVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetFeedbackOptionsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetFeedbackOptionsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetFeedbackOptionsVarsBuilder().build();
  }
}

class _$GGetFeedbackOptionsVars extends GGetFeedbackOptionsVars {
  factory _$GGetFeedbackOptionsVars(
          [void Function(GGetFeedbackOptionsVarsBuilder)? updates]) =>
      (new GGetFeedbackOptionsVarsBuilder()..update(updates)).build();

  _$GGetFeedbackOptionsVars._() : super._();

  @override
  GGetFeedbackOptionsVars rebuild(
          void Function(GGetFeedbackOptionsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetFeedbackOptionsVarsBuilder toBuilder() =>
      new GGetFeedbackOptionsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetFeedbackOptionsVars;
  }

  @override
  int get hashCode {
    return 880976390;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetFeedbackOptionsVars').toString();
  }
}

class GGetFeedbackOptionsVarsBuilder
    implements
        Builder<GGetFeedbackOptionsVars, GGetFeedbackOptionsVarsBuilder> {
  _$GGetFeedbackOptionsVars? _$v;

  GGetFeedbackOptionsVarsBuilder();

  @override
  void replace(GGetFeedbackOptionsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetFeedbackOptionsVars;
  }

  @override
  void update(void Function(GGetFeedbackOptionsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetFeedbackOptionsVars build() {
    final _$result = _$v ?? new _$GGetFeedbackOptionsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
