// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_group.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetGroupQueryVars> _$gGetGroupQueryVarsSerializer =
    new _$GGetGroupQueryVarsSerializer();

class _$GGetGroupQueryVarsSerializer
    implements StructuredSerializer<GGetGroupQueryVars> {
  @override
  final Iterable<Type> types = const [GGetGroupQueryVars, _$GGetGroupQueryVars];
  @override
  final String wireName = 'GGetGroupQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetGroupQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetGroupQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetGroupQueryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetGroupQueryVars extends GGetGroupQueryVars {
  @override
  final String id;

  factory _$GGetGroupQueryVars(
          [void Function(GGetGroupQueryVarsBuilder)? updates]) =>
      (new GGetGroupQueryVarsBuilder()..update(updates)).build();

  _$GGetGroupQueryVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GGetGroupQueryVars', 'id');
  }

  @override
  GGetGroupQueryVars rebuild(
          void Function(GGetGroupQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetGroupQueryVarsBuilder toBuilder() =>
      new GGetGroupQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetGroupQueryVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetGroupQueryVars')..add('id', id))
        .toString();
  }
}

class GGetGroupQueryVarsBuilder
    implements Builder<GGetGroupQueryVars, GGetGroupQueryVarsBuilder> {
  _$GGetGroupQueryVars? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetGroupQueryVarsBuilder();

  GGetGroupQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetGroupQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetGroupQueryVars;
  }

  @override
  void update(void Function(GGetGroupQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetGroupQueryVars build() {
    final _$result = _$v ??
        new _$GGetGroupQueryVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetGroupQueryVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
