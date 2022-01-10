// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_item_to_cart.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GAddItemToCartVars> _$gAddItemToCartVarsSerializer =
    new _$GAddItemToCartVarsSerializer();

class _$GAddItemToCartVarsSerializer
    implements StructuredSerializer<GAddItemToCartVars> {
  @override
  final Iterable<Type> types = const [GAddItemToCartVars, _$GAddItemToCartVars];
  @override
  final String wireName = 'GAddItemToCartVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GAddItemToCartVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.input;
    if (value != null) {
      result
        ..add('input')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GaddItemToCartInput)));
    }
    return result;
  }

  @override
  GAddItemToCartVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GAddItemToCartVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GaddItemToCartInput))!
              as _i1.GaddItemToCartInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GAddItemToCartVars extends GAddItemToCartVars {
  @override
  final _i1.GaddItemToCartInput? input;

  factory _$GAddItemToCartVars(
          [void Function(GAddItemToCartVarsBuilder)? updates]) =>
      (new GAddItemToCartVarsBuilder()..update(updates)).build();

  _$GAddItemToCartVars._({this.input}) : super._();

  @override
  GAddItemToCartVars rebuild(
          void Function(GAddItemToCartVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GAddItemToCartVarsBuilder toBuilder() =>
      new GAddItemToCartVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GAddItemToCartVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GAddItemToCartVars')
          ..add('input', input))
        .toString();
  }
}

class GAddItemToCartVarsBuilder
    implements Builder<GAddItemToCartVars, GAddItemToCartVarsBuilder> {
  _$GAddItemToCartVars? _$v;

  _i1.GaddItemToCartInputBuilder? _input;
  _i1.GaddItemToCartInputBuilder get input =>
      _$this._input ??= new _i1.GaddItemToCartInputBuilder();
  set input(_i1.GaddItemToCartInputBuilder? input) => _$this._input = input;

  GAddItemToCartVarsBuilder();

  GAddItemToCartVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GAddItemToCartVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GAddItemToCartVars;
  }

  @override
  void update(void Function(GAddItemToCartVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GAddItemToCartVars build() {
    _$GAddItemToCartVars _$result;
    try {
      _$result = _$v ?? new _$GAddItemToCartVars._(input: _input?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        _input?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GAddItemToCartVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
