// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_delivery_address.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateDeliveryAddressVars> _$gCreateDeliveryAddressVarsSerializer =
    new _$GCreateDeliveryAddressVarsSerializer();

class _$GCreateDeliveryAddressVarsSerializer
    implements StructuredSerializer<GCreateDeliveryAddressVars> {
  @override
  final Iterable<Type> types = const [
    GCreateDeliveryAddressVars,
    _$GCreateDeliveryAddressVars
  ];
  @override
  final String wireName = 'GCreateDeliveryAddressVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateDeliveryAddressVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.input;
    if (value != null) {
      result
        ..add('input')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GCreateDeliveryAddressInput)));
    }
    return result;
  }

  @override
  GCreateDeliveryAddressVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateDeliveryAddressVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i1.GCreateDeliveryAddressInput))!
              as _i1.GCreateDeliveryAddressInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GCreateDeliveryAddressVars extends GCreateDeliveryAddressVars {
  @override
  final _i1.GCreateDeliveryAddressInput? input;

  factory _$GCreateDeliveryAddressVars(
          [void Function(GCreateDeliveryAddressVarsBuilder)? updates]) =>
      (new GCreateDeliveryAddressVarsBuilder()..update(updates)).build();

  _$GCreateDeliveryAddressVars._({this.input}) : super._();

  @override
  GCreateDeliveryAddressVars rebuild(
          void Function(GCreateDeliveryAddressVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateDeliveryAddressVarsBuilder toBuilder() =>
      new GCreateDeliveryAddressVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCreateDeliveryAddressVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCreateDeliveryAddressVars')
          ..add('input', input))
        .toString();
  }
}

class GCreateDeliveryAddressVarsBuilder
    implements
        Builder<GCreateDeliveryAddressVars, GCreateDeliveryAddressVarsBuilder> {
  _$GCreateDeliveryAddressVars? _$v;

  _i1.GCreateDeliveryAddressInputBuilder? _input;
  _i1.GCreateDeliveryAddressInputBuilder get input =>
      _$this._input ??= new _i1.GCreateDeliveryAddressInputBuilder();
  set input(_i1.GCreateDeliveryAddressInputBuilder? input) =>
      _$this._input = input;

  GCreateDeliveryAddressVarsBuilder();

  GCreateDeliveryAddressVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCreateDeliveryAddressVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateDeliveryAddressVars;
  }

  @override
  void update(void Function(GCreateDeliveryAddressVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateDeliveryAddressVars build() {
    _$GCreateDeliveryAddressVars _$result;
    try {
      _$result =
          _$v ?? new _$GCreateDeliveryAddressVars._(input: _input?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        _input?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCreateDeliveryAddressVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
