// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCartQueryVars> _$gGetCartQueryVarsSerializer =
    new _$GGetCartQueryVarsSerializer();

class _$GGetCartQueryVarsSerializer
    implements StructuredSerializer<GGetCartQueryVars> {
  @override
  final Iterable<Type> types = const [GGetCartQueryVars, _$GGetCartQueryVars];
  @override
  final String wireName = 'GGetCartQueryVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetCartQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GGetCartQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCartQueryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCartQueryVars extends GGetCartQueryVars {
  @override
  final int id;

  factory _$GGetCartQueryVars(
          [void Function(GGetCartQueryVarsBuilder)? updates]) =>
      (new GGetCartQueryVarsBuilder()..update(updates)).build();

  _$GGetCartQueryVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GGetCartQueryVars', 'id');
  }

  @override
  GGetCartQueryVars rebuild(void Function(GGetCartQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCartQueryVarsBuilder toBuilder() =>
      new GGetCartQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCartQueryVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetCartQueryVars')..add('id', id))
        .toString();
  }
}

class GGetCartQueryVarsBuilder
    implements Builder<GGetCartQueryVars, GGetCartQueryVarsBuilder> {
  _$GGetCartQueryVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GGetCartQueryVarsBuilder();

  GGetCartQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCartQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCartQueryVars;
  }

  @override
  void update(void Function(GGetCartQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCartQueryVars build() {
    final _$result = _$v ??
        new _$GGetCartQueryVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetCartQueryVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
