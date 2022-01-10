// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_cart_item.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GEditCartItemVars> _$gEditCartItemVarsSerializer =
    new _$GEditCartItemVarsSerializer();

class _$GEditCartItemVarsSerializer
    implements StructuredSerializer<GEditCartItemVars> {
  @override
  final Iterable<Type> types = const [GEditCartItemVars, _$GEditCartItemVars];
  @override
  final String wireName = 'GEditCartItemVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GEditCartItemVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.input;
    if (value != null) {
      result
        ..add('input')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GeditCartItemInput)));
    }
    return result;
  }

  @override
  GEditCartItemVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GEditCartItemVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GeditCartItemInput))!
              as _i1.GeditCartItemInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GEditCartItemVars extends GEditCartItemVars {
  @override
  final _i1.GeditCartItemInput? input;

  factory _$GEditCartItemVars(
          [void Function(GEditCartItemVarsBuilder)? updates]) =>
      (new GEditCartItemVarsBuilder()..update(updates)).build();

  _$GEditCartItemVars._({this.input}) : super._();

  @override
  GEditCartItemVars rebuild(void Function(GEditCartItemVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GEditCartItemVarsBuilder toBuilder() =>
      new GEditCartItemVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GEditCartItemVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GEditCartItemVars')
          ..add('input', input))
        .toString();
  }
}

class GEditCartItemVarsBuilder
    implements Builder<GEditCartItemVars, GEditCartItemVarsBuilder> {
  _$GEditCartItemVars? _$v;

  _i1.GeditCartItemInputBuilder? _input;
  _i1.GeditCartItemInputBuilder get input =>
      _$this._input ??= new _i1.GeditCartItemInputBuilder();
  set input(_i1.GeditCartItemInputBuilder? input) => _$this._input = input;

  GEditCartItemVarsBuilder();

  GEditCartItemVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GEditCartItemVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GEditCartItemVars;
  }

  @override
  void update(void Function(GEditCartItemVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GEditCartItemVars build() {
    _$GEditCartItemVars _$result;
    try {
      _$result = _$v ?? new _$GEditCartItemVars._(input: _input?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        _input?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GEditCartItemVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
