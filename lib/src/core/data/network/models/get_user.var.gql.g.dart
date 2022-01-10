// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetUserVars> _$gGetUserVarsSerializer =
    new _$GGetUserVarsSerializer();

class _$GGetUserVarsSerializer implements StructuredSerializer<GGetUserVars> {
  @override
  final Iterable<Type> types = const [GGetUserVars, _$GGetUserVars];
  @override
  final String wireName = 'GGetUserVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUserVars extends GGetUserVars {
  @override
  final String? id;

  factory _$GGetUserVars([void Function(GGetUserVarsBuilder)? updates]) =>
      (new GGetUserVarsBuilder()..update(updates)).build();

  _$GGetUserVars._({this.id}) : super._();

  @override
  GGetUserVars rebuild(void Function(GGetUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUserVarsBuilder toBuilder() => new GGetUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUserVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUserVars')..add('id', id))
        .toString();
  }
}

class GGetUserVarsBuilder
    implements Builder<GGetUserVars, GGetUserVarsBuilder> {
  _$GGetUserVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetUserVarsBuilder();

  GGetUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUserVars;
  }

  @override
  void update(void Function(GGetUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUserVars build() {
    final _$result = _$v ?? new _$GGetUserVars._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
