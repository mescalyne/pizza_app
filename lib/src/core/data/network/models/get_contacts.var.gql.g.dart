// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_contacts.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetContactsQueryVars> _$gGetContactsQueryVarsSerializer =
    new _$GGetContactsQueryVarsSerializer();

class _$GGetContactsQueryVarsSerializer
    implements StructuredSerializer<GGetContactsQueryVars> {
  @override
  final Iterable<Type> types = const [
    GGetContactsQueryVars,
    _$GGetContactsQueryVars
  ];
  @override
  final String wireName = 'GGetContactsQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetContactsQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.city_id;
    if (value != null) {
      result
        ..add('city_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GGetContactsQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetContactsQueryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'city_id':
          result.city_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetContactsQueryVars extends GGetContactsQueryVars {
  @override
  final int? city_id;

  factory _$GGetContactsQueryVars(
          [void Function(GGetContactsQueryVarsBuilder)? updates]) =>
      (new GGetContactsQueryVarsBuilder()..update(updates)).build();

  _$GGetContactsQueryVars._({this.city_id}) : super._();

  @override
  GGetContactsQueryVars rebuild(
          void Function(GGetContactsQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetContactsQueryVarsBuilder toBuilder() =>
      new GGetContactsQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetContactsQueryVars && city_id == other.city_id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, city_id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetContactsQueryVars')
          ..add('city_id', city_id))
        .toString();
  }
}

class GGetContactsQueryVarsBuilder
    implements Builder<GGetContactsQueryVars, GGetContactsQueryVarsBuilder> {
  _$GGetContactsQueryVars? _$v;

  int? _city_id;
  int? get city_id => _$this._city_id;
  set city_id(int? city_id) => _$this._city_id = city_id;

  GGetContactsQueryVarsBuilder();

  GGetContactsQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _city_id = $v.city_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetContactsQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetContactsQueryVars;
  }

  @override
  void update(void Function(GGetContactsQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetContactsQueryVars build() {
    final _$result = _$v ?? new _$GGetContactsQueryVars._(city_id: city_id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
