// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_order.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCartOrderQueryVars> _$gGetCartOrderQueryVarsSerializer =
    new _$GGetCartOrderQueryVarsSerializer();

class _$GGetCartOrderQueryVarsSerializer
    implements StructuredSerializer<GGetCartOrderQueryVars> {
  @override
  final Iterable<Type> types = const [
    GGetCartOrderQueryVars,
    _$GGetCartOrderQueryVars
  ];
  @override
  final String wireName = 'GGetCartOrderQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCartOrderQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GGetCartOrderQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCartOrderQueryVarsBuilder();

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

class _$GGetCartOrderQueryVars extends GGetCartOrderQueryVars {
  @override
  final int id;

  factory _$GGetCartOrderQueryVars(
          [void Function(GGetCartOrderQueryVarsBuilder)? updates]) =>
      (new GGetCartOrderQueryVarsBuilder()..update(updates)).build();

  _$GGetCartOrderQueryVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'GGetCartOrderQueryVars', 'id');
  }

  @override
  GGetCartOrderQueryVars rebuild(
          void Function(GGetCartOrderQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCartOrderQueryVarsBuilder toBuilder() =>
      new GGetCartOrderQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCartOrderQueryVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetCartOrderQueryVars')
          ..add('id', id))
        .toString();
  }
}

class GGetCartOrderQueryVarsBuilder
    implements Builder<GGetCartOrderQueryVars, GGetCartOrderQueryVarsBuilder> {
  _$GGetCartOrderQueryVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GGetCartOrderQueryVarsBuilder();

  GGetCartOrderQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCartOrderQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCartOrderQueryVars;
  }

  @override
  void update(void Function(GGetCartOrderQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCartOrderQueryVars build() {
    final _$result = _$v ??
        new _$GGetCartOrderQueryVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetCartOrderQueryVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
