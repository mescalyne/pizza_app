// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GrefreshTokenData> _$grefreshTokenDataSerializer =
    new _$GrefreshTokenDataSerializer();
Serializer<GrefreshTokenData_refreshToken>
    _$grefreshTokenDataRefreshTokenSerializer =
    new _$GrefreshTokenData_refreshTokenSerializer();

class _$GrefreshTokenDataSerializer
    implements StructuredSerializer<GrefreshTokenData> {
  @override
  final Iterable<Type> types = const [GrefreshTokenData, _$GrefreshTokenData];
  @override
  final String wireName = 'GrefreshTokenData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GrefreshTokenData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'refreshToken',
      serializers.serialize(object.refreshToken,
          specifiedType: const FullType(GrefreshTokenData_refreshToken)),
    ];

    return result;
  }

  @override
  GrefreshTokenData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrefreshTokenDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refreshToken':
          result.refreshToken.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GrefreshTokenData_refreshToken))!
              as GrefreshTokenData_refreshToken);
          break;
      }
    }

    return result.build();
  }
}

class _$GrefreshTokenData_refreshTokenSerializer
    implements StructuredSerializer<GrefreshTokenData_refreshToken> {
  @override
  final Iterable<Type> types = const [
    GrefreshTokenData_refreshToken,
    _$GrefreshTokenData_refreshToken
  ];
  @override
  final String wireName = 'GrefreshTokenData_refreshToken';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GrefreshTokenData_refreshToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'access_token',
      serializers.serialize(object.access_token,
          specifiedType: const FullType(String)),
      'refresh_token',
      serializers.serialize(object.refresh_token,
          specifiedType: const FullType(String)),
      'token_type',
      serializers.serialize(object.token_type,
          specifiedType: const FullType(String)),
      'expires_in',
      serializers.serialize(object.expires_in,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GrefreshTokenData_refreshToken deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrefreshTokenData_refreshTokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'access_token':
          result.access_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refresh_token':
          result.refresh_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token_type':
          result.token_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expires_in':
          result.expires_in = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GrefreshTokenData extends GrefreshTokenData {
  @override
  final String G__typename;
  @override
  final GrefreshTokenData_refreshToken refreshToken;

  factory _$GrefreshTokenData(
          [void Function(GrefreshTokenDataBuilder)? updates]) =>
      (new GrefreshTokenDataBuilder()..update(updates)).build();

  _$GrefreshTokenData._({required this.G__typename, required this.refreshToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GrefreshTokenData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, 'GrefreshTokenData', 'refreshToken');
  }

  @override
  GrefreshTokenData rebuild(void Function(GrefreshTokenDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrefreshTokenDataBuilder toBuilder() =>
      new GrefreshTokenDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrefreshTokenData &&
        G__typename == other.G__typename &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), refreshToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GrefreshTokenData')
          ..add('G__typename', G__typename)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class GrefreshTokenDataBuilder
    implements Builder<GrefreshTokenData, GrefreshTokenDataBuilder> {
  _$GrefreshTokenData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GrefreshTokenData_refreshTokenBuilder? _refreshToken;
  GrefreshTokenData_refreshTokenBuilder get refreshToken =>
      _$this._refreshToken ??= new GrefreshTokenData_refreshTokenBuilder();
  set refreshToken(GrefreshTokenData_refreshTokenBuilder? refreshToken) =>
      _$this._refreshToken = refreshToken;

  GrefreshTokenDataBuilder() {
    GrefreshTokenData._initializeBuilder(this);
  }

  GrefreshTokenDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _refreshToken = $v.refreshToken.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrefreshTokenData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrefreshTokenData;
  }

  @override
  void update(void Function(GrefreshTokenDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GrefreshTokenData build() {
    _$GrefreshTokenData _$result;
    try {
      _$result = _$v ??
          new _$GrefreshTokenData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GrefreshTokenData', 'G__typename'),
              refreshToken: refreshToken.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'refreshToken';
        refreshToken.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GrefreshTokenData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GrefreshTokenData_refreshToken extends GrefreshTokenData_refreshToken {
  @override
  final String G__typename;
  @override
  final String access_token;
  @override
  final String refresh_token;
  @override
  final String token_type;
  @override
  final int expires_in;

  factory _$GrefreshTokenData_refreshToken(
          [void Function(GrefreshTokenData_refreshTokenBuilder)? updates]) =>
      (new GrefreshTokenData_refreshTokenBuilder()..update(updates)).build();

  _$GrefreshTokenData_refreshToken._(
      {required this.G__typename,
      required this.access_token,
      required this.refresh_token,
      required this.token_type,
      required this.expires_in})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GrefreshTokenData_refreshToken', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        access_token, 'GrefreshTokenData_refreshToken', 'access_token');
    BuiltValueNullFieldError.checkNotNull(
        refresh_token, 'GrefreshTokenData_refreshToken', 'refresh_token');
    BuiltValueNullFieldError.checkNotNull(
        token_type, 'GrefreshTokenData_refreshToken', 'token_type');
    BuiltValueNullFieldError.checkNotNull(
        expires_in, 'GrefreshTokenData_refreshToken', 'expires_in');
  }

  @override
  GrefreshTokenData_refreshToken rebuild(
          void Function(GrefreshTokenData_refreshTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrefreshTokenData_refreshTokenBuilder toBuilder() =>
      new GrefreshTokenData_refreshTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrefreshTokenData_refreshToken &&
        G__typename == other.G__typename &&
        access_token == other.access_token &&
        refresh_token == other.refresh_token &&
        token_type == other.token_type &&
        expires_in == other.expires_in;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), access_token.hashCode),
                refresh_token.hashCode),
            token_type.hashCode),
        expires_in.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GrefreshTokenData_refreshToken')
          ..add('G__typename', G__typename)
          ..add('access_token', access_token)
          ..add('refresh_token', refresh_token)
          ..add('token_type', token_type)
          ..add('expires_in', expires_in))
        .toString();
  }
}

class GrefreshTokenData_refreshTokenBuilder
    implements
        Builder<GrefreshTokenData_refreshToken,
            GrefreshTokenData_refreshTokenBuilder> {
  _$GrefreshTokenData_refreshToken? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _access_token;
  String? get access_token => _$this._access_token;
  set access_token(String? access_token) => _$this._access_token = access_token;

  String? _refresh_token;
  String? get refresh_token => _$this._refresh_token;
  set refresh_token(String? refresh_token) =>
      _$this._refresh_token = refresh_token;

  String? _token_type;
  String? get token_type => _$this._token_type;
  set token_type(String? token_type) => _$this._token_type = token_type;

  int? _expires_in;
  int? get expires_in => _$this._expires_in;
  set expires_in(int? expires_in) => _$this._expires_in = expires_in;

  GrefreshTokenData_refreshTokenBuilder() {
    GrefreshTokenData_refreshToken._initializeBuilder(this);
  }

  GrefreshTokenData_refreshTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _access_token = $v.access_token;
      _refresh_token = $v.refresh_token;
      _token_type = $v.token_type;
      _expires_in = $v.expires_in;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrefreshTokenData_refreshToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrefreshTokenData_refreshToken;
  }

  @override
  void update(void Function(GrefreshTokenData_refreshTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GrefreshTokenData_refreshToken build() {
    final _$result = _$v ??
        new _$GrefreshTokenData_refreshToken._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GrefreshTokenData_refreshToken', 'G__typename'),
            access_token: BuiltValueNullFieldError.checkNotNull(
                access_token, 'GrefreshTokenData_refreshToken', 'access_token'),
            refresh_token: BuiltValueNullFieldError.checkNotNull(refresh_token,
                'GrefreshTokenData_refreshToken', 'refresh_token'),
            token_type: BuiltValueNullFieldError.checkNotNull(
                token_type, 'GrefreshTokenData_refreshToken', 'token_type'),
            expires_in: BuiltValueNullFieldError.checkNotNull(
                expires_in, 'GrefreshTokenData_refreshToken', 'expires_in'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
