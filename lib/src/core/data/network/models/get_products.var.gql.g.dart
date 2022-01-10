// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_products.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetProductsQueryVars> _$gGetProductsQueryVarsSerializer =
    new _$GGetProductsQueryVarsSerializer();

class _$GGetProductsQueryVarsSerializer
    implements StructuredSerializer<GGetProductsQueryVars> {
  @override
  final Iterable<Type> types = const [
    GGetProductsQueryVars,
    _$GGetProductsQueryVars
  ];
  @override
  final String wireName = 'GGetProductsQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductsQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.filters;
    if (value != null) {
      result
        ..add('filters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GProductFiltersInput)));
    }
    return result;
  }

  @override
  GGetProductsQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductsQueryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'filters':
          result.filters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GProductFiltersInput))!
              as _i1.GProductFiltersInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductsQueryVars extends GGetProductsQueryVars {
  @override
  final _i1.GProductFiltersInput? filters;

  factory _$GGetProductsQueryVars(
          [void Function(GGetProductsQueryVarsBuilder)? updates]) =>
      (new GGetProductsQueryVarsBuilder()..update(updates)).build();

  _$GGetProductsQueryVars._({this.filters}) : super._();

  @override
  GGetProductsQueryVars rebuild(
          void Function(GGetProductsQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductsQueryVarsBuilder toBuilder() =>
      new GGetProductsQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductsQueryVars && filters == other.filters;
  }

  @override
  int get hashCode {
    return $jf($jc(0, filters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductsQueryVars')
          ..add('filters', filters))
        .toString();
  }
}

class GGetProductsQueryVarsBuilder
    implements Builder<GGetProductsQueryVars, GGetProductsQueryVarsBuilder> {
  _$GGetProductsQueryVars? _$v;

  _i1.GProductFiltersInputBuilder? _filters;
  _i1.GProductFiltersInputBuilder get filters =>
      _$this._filters ??= new _i1.GProductFiltersInputBuilder();
  set filters(_i1.GProductFiltersInputBuilder? filters) =>
      _$this._filters = filters;

  GGetProductsQueryVarsBuilder();

  GGetProductsQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductsQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductsQueryVars;
  }

  @override
  void update(void Function(GGetProductsQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductsQueryVars build() {
    _$GGetProductsQueryVars _$result;
    try {
      _$result =
          _$v ?? new _$GGetProductsQueryVars._(filters: _filters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductsQueryVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
