// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_auth.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GphoneAuthVars> _$gphoneAuthVarsSerializer =
    new _$GphoneAuthVarsSerializer();

class _$GphoneAuthVarsSerializer
    implements StructuredSerializer<GphoneAuthVars> {
  @override
  final Iterable<Type> types = const [GphoneAuthVars, _$GphoneAuthVars];
  @override
  final String wireName = 'GphoneAuthVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GphoneAuthVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'telephone',
      serializers.serialize(object.telephone,
          specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GphoneAuthVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GphoneAuthVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'telephone':
          result.telephone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GphoneAuthVars extends GphoneAuthVars {
  @override
  final String telephone;
  @override
  final String code;

  factory _$GphoneAuthVars([void Function(GphoneAuthVarsBuilder)? updates]) =>
      (new GphoneAuthVarsBuilder()..update(updates)).build();

  _$GphoneAuthVars._({required this.telephone, required this.code})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        telephone, 'GphoneAuthVars', 'telephone');
    BuiltValueNullFieldError.checkNotNull(code, 'GphoneAuthVars', 'code');
  }

  @override
  GphoneAuthVars rebuild(void Function(GphoneAuthVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GphoneAuthVarsBuilder toBuilder() =>
      new GphoneAuthVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GphoneAuthVars &&
        telephone == other.telephone &&
        code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, telephone.hashCode), code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GphoneAuthVars')
          ..add('telephone', telephone)
          ..add('code', code))
        .toString();
  }
}

class GphoneAuthVarsBuilder
    implements Builder<GphoneAuthVars, GphoneAuthVarsBuilder> {
  _$GphoneAuthVars? _$v;

  String? _telephone;
  String? get telephone => _$this._telephone;
  set telephone(String? telephone) => _$this._telephone = telephone;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  GphoneAuthVarsBuilder();

  GphoneAuthVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _telephone = $v.telephone;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GphoneAuthVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GphoneAuthVars;
  }

  @override
  void update(void Function(GphoneAuthVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GphoneAuthVars build() {
    final _$result = _$v ??
        new _$GphoneAuthVars._(
            telephone: BuiltValueNullFieldError.checkNotNull(
                telephone, 'GphoneAuthVars', 'telephone'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, 'GphoneAuthVars', 'code'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
