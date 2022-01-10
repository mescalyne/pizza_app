// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_cart.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GEditCartVars> _$gEditCartVarsSerializer =
    new _$GEditCartVarsSerializer();

class _$GEditCartVarsSerializer implements StructuredSerializer<GEditCartVars> {
  @override
  final Iterable<Type> types = const [GEditCartVars, _$GEditCartVars];
  @override
  final String wireName = 'GEditCartVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GEditCartVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.input;
    if (value != null) {
      result
        ..add('input')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GeditCartInput)));
    }
    return result;
  }

  @override
  GEditCartVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEditCartVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GeditCartInput))!
              as _i1.GeditCartInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GEditCartVars extends GEditCartVars {
  @override
  final _i1.GeditCartInput? input;

  factory _$GEditCartVars([void Function(GEditCartVarsBuilder)? updates]) =>
      (new GEditCartVarsBuilder()..update(updates)).build();

  _$GEditCartVars._({this.input}) : super._();

  @override
  GEditCartVars rebuild(void Function(GEditCartVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEditCartVarsBuilder toBuilder() => new GEditCartVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEditCartVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GEditCartVars')..add('input', input))
        .toString();
  }
}

class GEditCartVarsBuilder
    implements Builder<GEditCartVars, GEditCartVarsBuilder> {
  _$GEditCartVars? _$v;

  _i1.GeditCartInputBuilder? _input;
  _i1.GeditCartInputBuilder get input =>
      _$this._input ??= new _i1.GeditCartInputBuilder();
  set input(_i1.GeditCartInputBuilder? input) => _$this._input = input;

  GEditCartVarsBuilder();

  GEditCartVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEditCartVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEditCartVars;
  }

  @override
  void update(void Function(GEditCartVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GEditCartVars build() {
    _$GEditCartVars _$result;
    try {
      _$result = _$v ?? new _$GEditCartVars._(input: _input?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        _input?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GEditCartVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
