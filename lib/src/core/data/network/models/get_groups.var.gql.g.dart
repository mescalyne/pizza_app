// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_groups.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetGroupsQueryVars> _$gGetGroupsQueryVarsSerializer =
    new _$GGetGroupsQueryVarsSerializer();

class _$GGetGroupsQueryVarsSerializer
    implements StructuredSerializer<GGetGroupsQueryVars> {
  @override
  final Iterable<Type> types = const [
    GGetGroupsQueryVars,
    _$GGetGroupsQueryVars
  ];
  @override
  final String wireName = 'GGetGroupsQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetGroupsQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.filters;
    if (value != null) {
      result
        ..add('filters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GGroupFiltersInput)));
    }
    return result;
  }

  @override
  GGetGroupsQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetGroupsQueryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'filters':
          result.filters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GGroupFiltersInput))!
              as _i1.GGroupFiltersInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetGroupsQueryVars extends GGetGroupsQueryVars {
  @override
  final _i1.GGroupFiltersInput? filters;

  factory _$GGetGroupsQueryVars(
          [void Function(GGetGroupsQueryVarsBuilder)? updates]) =>
      (new GGetGroupsQueryVarsBuilder()..update(updates)).build();

  _$GGetGroupsQueryVars._({this.filters}) : super._();

  @override
  GGetGroupsQueryVars rebuild(
          void Function(GGetGroupsQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetGroupsQueryVarsBuilder toBuilder() =>
      new GGetGroupsQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetGroupsQueryVars && filters == other.filters;
  }

  @override
  int get hashCode {
    return $jf($jc(0, filters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetGroupsQueryVars')
          ..add('filters', filters))
        .toString();
  }
}

class GGetGroupsQueryVarsBuilder
    implements Builder<GGetGroupsQueryVars, GGetGroupsQueryVarsBuilder> {
  _$GGetGroupsQueryVars? _$v;

  _i1.GGroupFiltersInputBuilder? _filters;
  _i1.GGroupFiltersInputBuilder get filters =>
      _$this._filters ??= new _i1.GGroupFiltersInputBuilder();
  set filters(_i1.GGroupFiltersInputBuilder? filters) =>
      _$this._filters = filters;

  GGetGroupsQueryVarsBuilder();

  GGetGroupsQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetGroupsQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetGroupsQueryVars;
  }

  @override
  void update(void Function(GGetGroupsQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetGroupsQueryVars build() {
    _$GGetGroupsQueryVars _$result;
    try {
      _$result = _$v ?? new _$GGetGroupsQueryVars._(filters: _filters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetGroupsQueryVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
