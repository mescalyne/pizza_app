// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_item_from_cart.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRemoveItemFromCartVars> _$gRemoveItemFromCartVarsSerializer =
    new _$GRemoveItemFromCartVarsSerializer();

class _$GRemoveItemFromCartVarsSerializer
    implements StructuredSerializer<GRemoveItemFromCartVars> {
  @override
  final Iterable<Type> types = const [
    GRemoveItemFromCartVars,
    _$GRemoveItemFromCartVars
  ];
  @override
  final String wireName = 'GRemoveItemFromCartVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRemoveItemFromCartVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'cart_item_id',
      serializers.serialize(object.cart_item_id,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GRemoveItemFromCartVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRemoveItemFromCartVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cart_item_id':
          result.cart_item_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GRemoveItemFromCartVars extends GRemoveItemFromCartVars {
  @override
  final String cart_item_id;

  factory _$GRemoveItemFromCartVars(
          [void Function(GRemoveItemFromCartVarsBuilder)? updates]) =>
      (new GRemoveItemFromCartVarsBuilder()..update(updates)).build();

  _$GRemoveItemFromCartVars._({required this.cart_item_id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        cart_item_id, 'GRemoveItemFromCartVars', 'cart_item_id');
  }

  @override
  GRemoveItemFromCartVars rebuild(
          void Function(GRemoveItemFromCartVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveItemFromCartVarsBuilder toBuilder() =>
      new GRemoveItemFromCartVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveItemFromCartVars &&
        cart_item_id == other.cart_item_id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, cart_item_id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRemoveItemFromCartVars')
          ..add('cart_item_id', cart_item_id))
        .toString();
  }
}

class GRemoveItemFromCartVarsBuilder
    implements
        Builder<GRemoveItemFromCartVars, GRemoveItemFromCartVarsBuilder> {
  _$GRemoveItemFromCartVars? _$v;

  String? _cart_item_id;
  String? get cart_item_id => _$this._cart_item_id;
  set cart_item_id(String? cart_item_id) => _$this._cart_item_id = cart_item_id;

  GRemoveItemFromCartVarsBuilder();

  GRemoveItemFromCartVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cart_item_id = $v.cart_item_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRemoveItemFromCartVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveItemFromCartVars;
  }

  @override
  void update(void Function(GRemoveItemFromCartVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRemoveItemFromCartVars build() {
    final _$result = _$v ??
        new _$GRemoveItemFromCartVars._(
            cart_item_id: BuiltValueNullFieldError.checkNotNull(
                cart_item_id, 'GRemoveItemFromCartVars', 'cart_item_id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
