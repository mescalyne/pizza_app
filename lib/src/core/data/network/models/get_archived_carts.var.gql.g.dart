// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_archived_carts.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetArchivedCartsQueryVars> _$gGetArchivedCartsQueryVarsSerializer =
    new _$GGetArchivedCartsQueryVarsSerializer();

class _$GGetArchivedCartsQueryVarsSerializer
    implements StructuredSerializer<GGetArchivedCartsQueryVars> {
  @override
  final Iterable<Type> types = const [
    GGetArchivedCartsQueryVars,
    _$GGetArchivedCartsQueryVars
  ];
  @override
  final String wireName = 'GGetArchivedCartsQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetArchivedCartsQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.page;
    if (value != null) {
      result
        ..add('page')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.perPage;
    if (value != null) {
      result
        ..add('perPage')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.filters;
    if (value != null) {
      result
        ..add('filters')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GCartFiltersInput)));
    }
    return result;
  }

  @override
  GGetArchivedCartsQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetArchivedCartsQueryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'perPage':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'filters':
          result.filters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GCartFiltersInput))!
              as _i1.GCartFiltersInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetArchivedCartsQueryVars extends GGetArchivedCartsQueryVars {
  @override
  final int? page;
  @override
  final int? perPage;
  @override
  final _i1.GCartFiltersInput? filters;

  factory _$GGetArchivedCartsQueryVars(
          [void Function(GGetArchivedCartsQueryVarsBuilder)? updates]) =>
      (new GGetArchivedCartsQueryVarsBuilder()..update(updates)).build();

  _$GGetArchivedCartsQueryVars._({this.page, this.perPage, this.filters})
      : super._();

  @override
  GGetArchivedCartsQueryVars rebuild(
          void Function(GGetArchivedCartsQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetArchivedCartsQueryVarsBuilder toBuilder() =>
      new GGetArchivedCartsQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetArchivedCartsQueryVars &&
        page == other.page &&
        perPage == other.perPage &&
        filters == other.filters;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, page.hashCode), perPage.hashCode), filters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetArchivedCartsQueryVars')
          ..add('page', page)
          ..add('perPage', perPage)
          ..add('filters', filters))
        .toString();
  }
}

class GGetArchivedCartsQueryVarsBuilder
    implements
        Builder<GGetArchivedCartsQueryVars, GGetArchivedCartsQueryVarsBuilder> {
  _$GGetArchivedCartsQueryVars? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  _i1.GCartFiltersInputBuilder? _filters;
  _i1.GCartFiltersInputBuilder get filters =>
      _$this._filters ??= new _i1.GCartFiltersInputBuilder();
  set filters(_i1.GCartFiltersInputBuilder? filters) =>
      _$this._filters = filters;

  GGetArchivedCartsQueryVarsBuilder();

  GGetArchivedCartsQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _perPage = $v.perPage;
      _filters = $v.filters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetArchivedCartsQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetArchivedCartsQueryVars;
  }

  @override
  void update(void Function(GGetArchivedCartsQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetArchivedCartsQueryVars build() {
    _$GGetArchivedCartsQueryVars _$result;
    try {
      _$result = _$v ??
          new _$GGetArchivedCartsQueryVars._(
              page: page, perPage: perPage, filters: _filters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetArchivedCartsQueryVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
