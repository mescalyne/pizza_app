// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginator_info_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPaginatorInfoFragmentVars> _$gPaginatorInfoFragmentVarsSerializer =
    new _$GPaginatorInfoFragmentVarsSerializer();

class _$GPaginatorInfoFragmentVarsSerializer
    implements StructuredSerializer<GPaginatorInfoFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GPaginatorInfoFragmentVars,
    _$GPaginatorInfoFragmentVars
  ];
  @override
  final String wireName = 'GPaginatorInfoFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPaginatorInfoFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GPaginatorInfoFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GPaginatorInfoFragmentVarsBuilder().build();
  }
}

class _$GPaginatorInfoFragmentVars extends GPaginatorInfoFragmentVars {
  factory _$GPaginatorInfoFragmentVars(
          [void Function(GPaginatorInfoFragmentVarsBuilder)? updates]) =>
      (new GPaginatorInfoFragmentVarsBuilder()..update(updates)).build();

  _$GPaginatorInfoFragmentVars._() : super._();

  @override
  GPaginatorInfoFragmentVars rebuild(
          void Function(GPaginatorInfoFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPaginatorInfoFragmentVarsBuilder toBuilder() =>
      new GPaginatorInfoFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPaginatorInfoFragmentVars;
  }

  @override
  int get hashCode {
    return 116603810;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GPaginatorInfoFragmentVars').toString();
  }
}

class GPaginatorInfoFragmentVarsBuilder
    implements
        Builder<GPaginatorInfoFragmentVars, GPaginatorInfoFragmentVarsBuilder> {
  _$GPaginatorInfoFragmentVars? _$v;

  GPaginatorInfoFragmentVarsBuilder();

  @override
  void replace(GPaginatorInfoFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPaginatorInfoFragmentVars;
  }

  @override
  void update(void Function(GPaginatorInfoFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPaginatorInfoFragmentVars build() {
    final _$result = _$v ?? new _$GPaginatorInfoFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
