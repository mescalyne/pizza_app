// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_options_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFeedbackOptionFragmentVars>
    _$gFeedbackOptionFragmentVarsSerializer =
    new _$GFeedbackOptionFragmentVarsSerializer();

class _$GFeedbackOptionFragmentVarsSerializer
    implements StructuredSerializer<GFeedbackOptionFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GFeedbackOptionFragmentVars,
    _$GFeedbackOptionFragmentVars
  ];
  @override
  final String wireName = 'GFeedbackOptionFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedbackOptionFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GFeedbackOptionFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GFeedbackOptionFragmentVarsBuilder().build();
  }
}

class _$GFeedbackOptionFragmentVars extends GFeedbackOptionFragmentVars {
  factory _$GFeedbackOptionFragmentVars(
          [void Function(GFeedbackOptionFragmentVarsBuilder)? updates]) =>
      (new GFeedbackOptionFragmentVarsBuilder()..update(updates)).build();

  _$GFeedbackOptionFragmentVars._() : super._();

  @override
  GFeedbackOptionFragmentVars rebuild(
          void Function(GFeedbackOptionFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedbackOptionFragmentVarsBuilder toBuilder() =>
      new GFeedbackOptionFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedbackOptionFragmentVars;
  }

  @override
  int get hashCode {
    return 405041753;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GFeedbackOptionFragmentVars')
        .toString();
  }
}

class GFeedbackOptionFragmentVarsBuilder
    implements
        Builder<GFeedbackOptionFragmentVars,
            GFeedbackOptionFragmentVarsBuilder> {
  _$GFeedbackOptionFragmentVars? _$v;

  GFeedbackOptionFragmentVarsBuilder();

  @override
  void replace(GFeedbackOptionFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedbackOptionFragmentVars;
  }

  @override
  void update(void Function(GFeedbackOptionFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedbackOptionFragmentVars build() {
    final _$result = _$v ?? new _$GFeedbackOptionFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
