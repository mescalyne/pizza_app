// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_delivery_address.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteDeliveryAddressVars> _$gDeleteDeliveryAddressVarsSerializer =
    new _$GDeleteDeliveryAddressVarsSerializer();

class _$GDeleteDeliveryAddressVarsSerializer
    implements StructuredSerializer<GDeleteDeliveryAddressVars> {
  @override
  final Iterable<Type> types = const [
    GDeleteDeliveryAddressVars,
    _$GDeleteDeliveryAddressVars
  ];
  @override
  final String wireName = 'GDeleteDeliveryAddressVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteDeliveryAddressVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GDeleteDeliveryAddressVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteDeliveryAddressVarsBuilder();

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

class _$GDeleteDeliveryAddressVars extends GDeleteDeliveryAddressVars {
  @override
  final int id;

  factory _$GDeleteDeliveryAddressVars(
          [void Function(GDeleteDeliveryAddressVarsBuilder)? updates]) =>
      (new GDeleteDeliveryAddressVarsBuilder()..update(updates)).build();

  _$GDeleteDeliveryAddressVars._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, 'GDeleteDeliveryAddressVars', 'id');
  }

  @override
  GDeleteDeliveryAddressVars rebuild(
          void Function(GDeleteDeliveryAddressVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteDeliveryAddressVarsBuilder toBuilder() =>
      new GDeleteDeliveryAddressVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteDeliveryAddressVars && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteDeliveryAddressVars')
          ..add('id', id))
        .toString();
  }
}

class GDeleteDeliveryAddressVarsBuilder
    implements
        Builder<GDeleteDeliveryAddressVars, GDeleteDeliveryAddressVarsBuilder> {
  _$GDeleteDeliveryAddressVars? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GDeleteDeliveryAddressVarsBuilder();

  GDeleteDeliveryAddressVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteDeliveryAddressVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteDeliveryAddressVars;
  }

  @override
  void update(void Function(GDeleteDeliveryAddressVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteDeliveryAddressVars build() {
    final _$result = _$v ??
        new _$GDeleteDeliveryAddressVars._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GDeleteDeliveryAddressVars', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
