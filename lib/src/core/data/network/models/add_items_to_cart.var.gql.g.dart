// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_items_to_cart.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAddItemsToCartVars> _$gAddItemsToCartVarsSerializer =
    new _$GAddItemsToCartVarsSerializer();

class _$GAddItemsToCartVarsSerializer
    implements StructuredSerializer<GAddItemsToCartVars> {
  @override
  final Iterable<Type> types = const [
    GAddItemsToCartVars,
    _$GAddItemsToCartVars
  ];
  @override
  final String wireName = 'GAddItemsToCartVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddItemsToCartVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.input;
    if (value != null) {
      result
        ..add('input')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GaddItemsToCartInput)));
    }
    return result;
  }

  @override
  GAddItemsToCartVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddItemsToCartVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GaddItemsToCartInput))!
              as _i1.GaddItemsToCartInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddItemsToCartVars extends GAddItemsToCartVars {
  @override
  final _i1.GaddItemsToCartInput? input;

  factory _$GAddItemsToCartVars(
          [void Function(GAddItemsToCartVarsBuilder)? updates]) =>
      (new GAddItemsToCartVarsBuilder()..update(updates)).build();

  _$GAddItemsToCartVars._({this.input}) : super._();

  @override
  GAddItemsToCartVars rebuild(
          void Function(GAddItemsToCartVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddItemsToCartVarsBuilder toBuilder() =>
      new GAddItemsToCartVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddItemsToCartVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAddItemsToCartVars')
          ..add('input', input))
        .toString();
  }
}

class GAddItemsToCartVarsBuilder
    implements Builder<GAddItemsToCartVars, GAddItemsToCartVarsBuilder> {
  _$GAddItemsToCartVars? _$v;

  _i1.GaddItemsToCartInputBuilder? _input;
  _i1.GaddItemsToCartInputBuilder get input =>
      _$this._input ??= new _i1.GaddItemsToCartInputBuilder();
  set input(_i1.GaddItemsToCartInputBuilder? input) => _$this._input = input;

  GAddItemsToCartVarsBuilder();

  GAddItemsToCartVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddItemsToCartVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddItemsToCartVars;
  }

  @override
  void update(void Function(GAddItemsToCartVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddItemsToCartVars build() {
    _$GAddItemsToCartVars _$result;
    try {
      _$result = _$v ?? new _$GAddItemsToCartVars._(input: _input?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        _input?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAddItemsToCartVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
