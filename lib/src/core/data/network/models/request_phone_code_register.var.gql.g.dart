// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_phone_code_register.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GrequestPhoneCodeRegisterVars>
    _$grequestPhoneCodeRegisterVarsSerializer =
    new _$GrequestPhoneCodeRegisterVarsSerializer();

class _$GrequestPhoneCodeRegisterVarsSerializer
    implements StructuredSerializer<GrequestPhoneCodeRegisterVars> {
  @override
  final Iterable<Type> types = const [
    GrequestPhoneCodeRegisterVars,
    _$GrequestPhoneCodeRegisterVars
  ];
  @override
  final String wireName = 'GrequestPhoneCodeRegisterVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GrequestPhoneCodeRegisterVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.input;
    if (value != null) {
      result
        ..add('input')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GPhoneRegisterInput)));
    }
    return result;
  }

  @override
  GrequestPhoneCodeRegisterVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrequestPhoneCodeRegisterVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GPhoneRegisterInput))!
              as _i1.GPhoneRegisterInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GrequestPhoneCodeRegisterVars extends GrequestPhoneCodeRegisterVars {
  @override
  final _i1.GPhoneRegisterInput? input;

  factory _$GrequestPhoneCodeRegisterVars(
          [void Function(GrequestPhoneCodeRegisterVarsBuilder)? updates]) =>
      (new GrequestPhoneCodeRegisterVarsBuilder()..update(updates)).build();

  _$GrequestPhoneCodeRegisterVars._({this.input}) : super._();

  @override
  GrequestPhoneCodeRegisterVars rebuild(
          void Function(GrequestPhoneCodeRegisterVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrequestPhoneCodeRegisterVarsBuilder toBuilder() =>
      new GrequestPhoneCodeRegisterVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrequestPhoneCodeRegisterVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GrequestPhoneCodeRegisterVars')
          ..add('input', input))
        .toString();
  }
}

class GrequestPhoneCodeRegisterVarsBuilder
    implements
        Builder<GrequestPhoneCodeRegisterVars,
            GrequestPhoneCodeRegisterVarsBuilder> {
  _$GrequestPhoneCodeRegisterVars? _$v;

  _i1.GPhoneRegisterInputBuilder? _input;
  _i1.GPhoneRegisterInputBuilder get input =>
      _$this._input ??= new _i1.GPhoneRegisterInputBuilder();
  set input(_i1.GPhoneRegisterInputBuilder? input) => _$this._input = input;

  GrequestPhoneCodeRegisterVarsBuilder();

  GrequestPhoneCodeRegisterVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrequestPhoneCodeRegisterVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrequestPhoneCodeRegisterVars;
  }

  @override
  void update(void Function(GrequestPhoneCodeRegisterVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GrequestPhoneCodeRegisterVars build() {
    _$GrequestPhoneCodeRegisterVars _$result;
    try {
      _$result =
          _$v ?? new _$GrequestPhoneCodeRegisterVars._(input: _input?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        _input?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GrequestPhoneCodeRegisterVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
