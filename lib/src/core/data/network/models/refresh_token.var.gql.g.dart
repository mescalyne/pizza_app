// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GrefreshTokenVars> _$grefreshTokenVarsSerializer =
    new _$GrefreshTokenVarsSerializer();

class _$GrefreshTokenVarsSerializer
    implements StructuredSerializer<GrefreshTokenVars> {
  @override
  final Iterable<Type> types = const [GrefreshTokenVars, _$GrefreshTokenVars];
  @override
  final String wireName = 'GrefreshTokenVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GrefreshTokenVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'refresh_token',
      serializers.serialize(object.refresh_token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GrefreshTokenVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrefreshTokenVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'refresh_token':
          result.refresh_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GrefreshTokenVars extends GrefreshTokenVars {
  @override
  final String refresh_token;

  factory _$GrefreshTokenVars(
          [void Function(GrefreshTokenVarsBuilder)? updates]) =>
      (new GrefreshTokenVarsBuilder()..update(updates)).build();

  _$GrefreshTokenVars._({required this.refresh_token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        refresh_token, 'GrefreshTokenVars', 'refresh_token');
  }

  @override
  GrefreshTokenVars rebuild(void Function(GrefreshTokenVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrefreshTokenVarsBuilder toBuilder() =>
      new GrefreshTokenVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrefreshTokenVars && refresh_token == other.refresh_token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, refresh_token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GrefreshTokenVars')
          ..add('refresh_token', refresh_token))
        .toString();
  }
}

class GrefreshTokenVarsBuilder
    implements Builder<GrefreshTokenVars, GrefreshTokenVarsBuilder> {
  _$GrefreshTokenVars? _$v;

  String? _refresh_token;
  String? get refresh_token => _$this._refresh_token;
  set refresh_token(String? refresh_token) =>
      _$this._refresh_token = refresh_token;

  GrefreshTokenVarsBuilder();

  GrefreshTokenVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refresh_token = $v.refresh_token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrefreshTokenVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrefreshTokenVars;
  }

  @override
  void update(void Function(GrefreshTokenVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GrefreshTokenVars build() {
    final _$result = _$v ??
        new _$GrefreshTokenVars._(
            refresh_token: BuiltValueNullFieldError.checkNotNull(
                refresh_token, 'GrefreshTokenVars', 'refresh_token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
