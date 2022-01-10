// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurant.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetRestaurantVars> _$gGetRestaurantVarsSerializer =
    new _$GGetRestaurantVarsSerializer();

class _$GGetRestaurantVarsSerializer
    implements StructuredSerializer<GGetRestaurantVars> {
  @override
  final Iterable<Type> types = const [GGetRestaurantVars, _$GGetRestaurantVars];
  @override
  final String wireName = 'GGetRestaurantVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRestaurantVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GGetRestaurantVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRestaurantVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRestaurantVars extends GGetRestaurantVars {
  @override
  final int? id;

  factory _$GGetRestaurantVars(
          [void Function(GGetRestaurantVarsBuilder)? updates]) =>
      (new GGetRestaurantVarsBuilder()..update(updates)).build();

  _$GGetRestaurantVars._({this.id}) : super._();

  @override
  GGetRestaurantVars rebuild(
          void Function(GGetRestaurantVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRestaurantVarsBuilder toBuilder() =>
      new GGetRestaurantVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRestaurantVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRestaurantVars')..add('id', id))
        .toString();
  }
}

class GGetRestaurantVarsBuilder
    implements Builder<GGetRestaurantVars, GGetRestaurantVarsBuilder> {
  _$GGetRestaurantVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GGetRestaurantVarsBuilder();

  GGetRestaurantVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRestaurantVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRestaurantVars;
  }

  @override
  void update(void Function(GGetRestaurantVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRestaurantVars build() {
    final _$result = _$v ?? new _$GGetRestaurantVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
