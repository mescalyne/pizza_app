// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_modificator_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGroupModificatorFragmentVars>
    _$gGroupModificatorFragmentVarsSerializer =
    new _$GGroupModificatorFragmentVarsSerializer();

class _$GGroupModificatorFragmentVarsSerializer
    implements StructuredSerializer<GGroupModificatorFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GGroupModificatorFragmentVars,
    _$GGroupModificatorFragmentVars
  ];
  @override
  final String wireName = 'GGroupModificatorFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupModificatorFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGroupModificatorFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGroupModificatorFragmentVarsBuilder().build();
  }
}

class _$GGroupModificatorFragmentVars extends GGroupModificatorFragmentVars {
  factory _$GGroupModificatorFragmentVars(
          [void Function(GGroupModificatorFragmentVarsBuilder)? updates]) =>
      (new GGroupModificatorFragmentVarsBuilder()..update(updates)).build();

  _$GGroupModificatorFragmentVars._() : super._();

  @override
  GGroupModificatorFragmentVars rebuild(
          void Function(GGroupModificatorFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupModificatorFragmentVarsBuilder toBuilder() =>
      new GGroupModificatorFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupModificatorFragmentVars;
  }

  @override
  int get hashCode {
    return 467903456;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGroupModificatorFragmentVars')
        .toString();
  }
}

class GGroupModificatorFragmentVarsBuilder
    implements
        Builder<GGroupModificatorFragmentVars,
            GGroupModificatorFragmentVarsBuilder> {
  _$GGroupModificatorFragmentVars? _$v;

  GGroupModificatorFragmentVarsBuilder();

  @override
  void replace(GGroupModificatorFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupModificatorFragmentVars;
  }

  @override
  void update(void Function(GGroupModificatorFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGroupModificatorFragmentVars build() {
    final _$result = _$v ?? new _$GGroupModificatorFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
