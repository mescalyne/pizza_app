// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_auth.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GphoneAuthData> _$gphoneAuthDataSerializer =
    new _$GphoneAuthDataSerializer();
Serializer<GphoneAuthData_phoneAuth> _$gphoneAuthDataPhoneAuthSerializer =
    new _$GphoneAuthData_phoneAuthSerializer();
Serializer<GphoneAuthData_phoneAuth_user>
    _$gphoneAuthDataPhoneAuthUserSerializer =
    new _$GphoneAuthData_phoneAuth_userSerializer();

class _$GphoneAuthDataSerializer
    implements StructuredSerializer<GphoneAuthData> {
  @override
  final Iterable<Type> types = const [GphoneAuthData, _$GphoneAuthData];
  @override
  final String wireName = 'GphoneAuthData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GphoneAuthData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'phoneAuth',
      serializers.serialize(object.phoneAuth,
          specifiedType: const FullType(GphoneAuthData_phoneAuth)),
    ];

    return result;
  }

  @override
  GphoneAuthData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GphoneAuthDataBuilder();

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
        case 'phoneAuth':
          result.phoneAuth.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GphoneAuthData_phoneAuth))!
              as GphoneAuthData_phoneAuth);
          break;
      }
    }

    return result.build();
  }
}

class _$GphoneAuthData_phoneAuthSerializer
    implements StructuredSerializer<GphoneAuthData_phoneAuth> {
  @override
  final Iterable<Type> types = const [
    GphoneAuthData_phoneAuth,
    _$GphoneAuthData_phoneAuth
  ];
  @override
  final String wireName = 'GphoneAuthData_phoneAuth';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GphoneAuthData_phoneAuth object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.access_token;
    if (value != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refresh_token;
    if (value != null) {
      result
        ..add('refresh_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.token_type;
    if (value != null) {
      result
        ..add('token_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.expires_in;
    if (value != null) {
      result
        ..add('expires_in')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GphoneAuthData_phoneAuth_user)));
    }
    return result;
  }

  @override
  GphoneAuthData_phoneAuth deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GphoneAuthData_phoneAuthBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'refresh_token':
          result.refresh_token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'token_type':
          result.token_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'expires_in':
          result.expires_in = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GphoneAuthData_phoneAuth_user))!
              as GphoneAuthData_phoneAuth_user);
          break;
      }
    }

    return result.build();
  }
}

class _$GphoneAuthData_phoneAuth_userSerializer
    implements StructuredSerializer<GphoneAuthData_phoneAuth_user> {
  @override
  final Iterable<Type> types = const [
    GphoneAuthData_phoneAuth_user,
    _$GphoneAuthData_phoneAuth_user
  ];
  @override
  final String wireName = 'GphoneAuthData_phoneAuth_user';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GphoneAuthData_phoneAuth_user object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(_i3.GDateTime)),
      'updated_at',
      serializers.serialize(object.updated_at,
          specifiedType: const FullType(_i3.GDateTime)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.surname;
    if (value != null) {
      result
        ..add('surname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.middle_name;
    if (value != null) {
      result
        ..add('middle_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telephone;
    if (value != null) {
      result
        ..add('telephone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.active;
    if (value != null) {
      result
        ..add('active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.telephone_verified_at;
    if (value != null) {
      result
        ..add('telephone_verified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GDateTime)));
    }
    value = object.email_verified_at;
    if (value != null) {
      result
        ..add('email_verified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GDateTime)));
    }
    value = object.is_guest;
    if (value != null) {
      result
        ..add('is_guest')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.last_active_at;
    if (value != null) {
      result
        ..add('last_active_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GDateTime)));
    }
    value = object.bonus_balance;
    if (value != null) {
      result
        ..add('bonus_balance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.date_of_birth;
    if (value != null) {
      result
        ..add('date_of_birth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customer_id;
    if (value != null) {
      result
        ..add('customer_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GphoneAuthData_phoneAuth_user deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GphoneAuthData_phoneAuth_userBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'surname':
          result.surname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'middle_name':
          result.middle_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telephone':
          result.telephone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'telephone_verified_at':
          result.telephone_verified_at.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i3.GDateTime))! as _i3.GDateTime);
          break;
        case 'email_verified_at':
          result.email_verified_at.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i3.GDateTime))! as _i3.GDateTime);
          break;
        case 'created_at':
          result.created_at.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i3.GDateTime))! as _i3.GDateTime);
          break;
        case 'updated_at':
          result.updated_at.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i3.GDateTime))! as _i3.GDateTime);
          break;
        case 'is_guest':
          result.is_guest = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'last_active_at':
          result.last_active_at.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i3.GDateTime))! as _i3.GDateTime);
          break;
        case 'bonus_balance':
          result.bonus_balance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'date_of_birth':
          result.date_of_birth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'customer_id':
          result.customer_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GphoneAuthData extends GphoneAuthData {
  @override
  final String G__typename;
  @override
  final GphoneAuthData_phoneAuth phoneAuth;

  factory _$GphoneAuthData([void Function(GphoneAuthDataBuilder)? updates]) =>
      (new GphoneAuthDataBuilder()..update(updates)).build();

  _$GphoneAuthData._({required this.G__typename, required this.phoneAuth})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GphoneAuthData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        phoneAuth, 'GphoneAuthData', 'phoneAuth');
  }

  @override
  GphoneAuthData rebuild(void Function(GphoneAuthDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GphoneAuthDataBuilder toBuilder() =>
      new GphoneAuthDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GphoneAuthData &&
        G__typename == other.G__typename &&
        phoneAuth == other.phoneAuth;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), phoneAuth.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GphoneAuthData')
          ..add('G__typename', G__typename)
          ..add('phoneAuth', phoneAuth))
        .toString();
  }
}

class GphoneAuthDataBuilder
    implements Builder<GphoneAuthData, GphoneAuthDataBuilder> {
  _$GphoneAuthData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GphoneAuthData_phoneAuthBuilder? _phoneAuth;
  GphoneAuthData_phoneAuthBuilder get phoneAuth =>
      _$this._phoneAuth ??= new GphoneAuthData_phoneAuthBuilder();
  set phoneAuth(GphoneAuthData_phoneAuthBuilder? phoneAuth) =>
      _$this._phoneAuth = phoneAuth;

  GphoneAuthDataBuilder() {
    GphoneAuthData._initializeBuilder(this);
  }

  GphoneAuthDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _phoneAuth = $v.phoneAuth.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GphoneAuthData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GphoneAuthData;
  }

  @override
  void update(void Function(GphoneAuthDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GphoneAuthData build() {
    _$GphoneAuthData _$result;
    try {
      _$result = _$v ??
          new _$GphoneAuthData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GphoneAuthData', 'G__typename'),
              phoneAuth: phoneAuth.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'phoneAuth';
        phoneAuth.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GphoneAuthData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GphoneAuthData_phoneAuth extends GphoneAuthData_phoneAuth {
  @override
  final String G__typename;
  @override
  final String? access_token;
  @override
  final String? refresh_token;
  @override
  final String? token_type;
  @override
  final int? expires_in;
  @override
  final GphoneAuthData_phoneAuth_user? user;

  factory _$GphoneAuthData_phoneAuth(
          [void Function(GphoneAuthData_phoneAuthBuilder)? updates]) =>
      (new GphoneAuthData_phoneAuthBuilder()..update(updates)).build();

  _$GphoneAuthData_phoneAuth._(
      {required this.G__typename,
      this.access_token,
      this.refresh_token,
      this.token_type,
      this.expires_in,
      this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GphoneAuthData_phoneAuth', 'G__typename');
  }

  @override
  GphoneAuthData_phoneAuth rebuild(
          void Function(GphoneAuthData_phoneAuthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GphoneAuthData_phoneAuthBuilder toBuilder() =>
      new GphoneAuthData_phoneAuthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GphoneAuthData_phoneAuth &&
        G__typename == other.G__typename &&
        access_token == other.access_token &&
        refresh_token == other.refresh_token &&
        token_type == other.token_type &&
        expires_in == other.expires_in &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), access_token.hashCode),
                    refresh_token.hashCode),
                token_type.hashCode),
            expires_in.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GphoneAuthData_phoneAuth')
          ..add('G__typename', G__typename)
          ..add('access_token', access_token)
          ..add('refresh_token', refresh_token)
          ..add('token_type', token_type)
          ..add('expires_in', expires_in)
          ..add('user', user))
        .toString();
  }
}

class GphoneAuthData_phoneAuthBuilder
    implements
        Builder<GphoneAuthData_phoneAuth, GphoneAuthData_phoneAuthBuilder> {
  _$GphoneAuthData_phoneAuth? _$v;

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

  GphoneAuthData_phoneAuth_userBuilder? _user;
  GphoneAuthData_phoneAuth_userBuilder get user =>
      _$this._user ??= new GphoneAuthData_phoneAuth_userBuilder();
  set user(GphoneAuthData_phoneAuth_userBuilder? user) => _$this._user = user;

  GphoneAuthData_phoneAuthBuilder() {
    GphoneAuthData_phoneAuth._initializeBuilder(this);
  }

  GphoneAuthData_phoneAuthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _access_token = $v.access_token;
      _refresh_token = $v.refresh_token;
      _token_type = $v.token_type;
      _expires_in = $v.expires_in;
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GphoneAuthData_phoneAuth other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GphoneAuthData_phoneAuth;
  }

  @override
  void update(void Function(GphoneAuthData_phoneAuthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GphoneAuthData_phoneAuth build() {
    _$GphoneAuthData_phoneAuth _$result;
    try {
      _$result = _$v ??
          new _$GphoneAuthData_phoneAuth._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GphoneAuthData_phoneAuth', 'G__typename'),
              access_token: access_token,
              refresh_token: refresh_token,
              token_type: token_type,
              expires_in: expires_in,
              user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GphoneAuthData_phoneAuth', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GphoneAuthData_phoneAuth_user extends GphoneAuthData_phoneAuth_user {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? middle_name;
  @override
  final String? email;
  @override
  final String? telephone;
  @override
  final bool? active;
  @override
  final _i3.GDateTime? telephone_verified_at;
  @override
  final _i3.GDateTime? email_verified_at;
  @override
  final _i3.GDateTime created_at;
  @override
  final _i3.GDateTime updated_at;
  @override
  final bool? is_guest;
  @override
  final _i3.GDateTime? last_active_at;
  @override
  final double? bonus_balance;
  @override
  final String? date_of_birth;
  @override
  final String? customer_id;

  factory _$GphoneAuthData_phoneAuth_user(
          [void Function(GphoneAuthData_phoneAuth_userBuilder)? updates]) =>
      (new GphoneAuthData_phoneAuth_userBuilder()..update(updates)).build();

  _$GphoneAuthData_phoneAuth_user._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.surname,
      this.middle_name,
      this.email,
      this.telephone,
      this.active,
      this.telephone_verified_at,
      this.email_verified_at,
      required this.created_at,
      required this.updated_at,
      this.is_guest,
      this.last_active_at,
      this.bonus_balance,
      this.date_of_birth,
      this.customer_id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GphoneAuthData_phoneAuth_user', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GphoneAuthData_phoneAuth_user', 'id');
    BuiltValueNullFieldError.checkNotNull(
        created_at, 'GphoneAuthData_phoneAuth_user', 'created_at');
    BuiltValueNullFieldError.checkNotNull(
        updated_at, 'GphoneAuthData_phoneAuth_user', 'updated_at');
  }

  @override
  GphoneAuthData_phoneAuth_user rebuild(
          void Function(GphoneAuthData_phoneAuth_userBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GphoneAuthData_phoneAuth_userBuilder toBuilder() =>
      new GphoneAuthData_phoneAuth_userBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GphoneAuthData_phoneAuth_user &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        surname == other.surname &&
        middle_name == other.middle_name &&
        email == other.email &&
        telephone == other.telephone &&
        active == other.active &&
        telephone_verified_at == other.telephone_verified_at &&
        email_verified_at == other.email_verified_at &&
        created_at == other.created_at &&
        updated_at == other.updated_at &&
        is_guest == other.is_guest &&
        last_active_at == other.last_active_at &&
        bonus_balance == other.bonus_balance &&
        date_of_birth == other.date_of_birth &&
        customer_id == other.customer_id;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        G__typename
                                                                            .hashCode),
                                                                    id.hashCode),
                                                                name.hashCode),
                                                            surname.hashCode),
                                                        middle_name.hashCode),
                                                    email.hashCode),
                                                telephone.hashCode),
                                            active.hashCode),
                                        telephone_verified_at.hashCode),
                                    email_verified_at.hashCode),
                                created_at.hashCode),
                            updated_at.hashCode),
                        is_guest.hashCode),
                    last_active_at.hashCode),
                bonus_balance.hashCode),
            date_of_birth.hashCode),
        customer_id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GphoneAuthData_phoneAuth_user')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('surname', surname)
          ..add('middle_name', middle_name)
          ..add('email', email)
          ..add('telephone', telephone)
          ..add('active', active)
          ..add('telephone_verified_at', telephone_verified_at)
          ..add('email_verified_at', email_verified_at)
          ..add('created_at', created_at)
          ..add('updated_at', updated_at)
          ..add('is_guest', is_guest)
          ..add('last_active_at', last_active_at)
          ..add('bonus_balance', bonus_balance)
          ..add('date_of_birth', date_of_birth)
          ..add('customer_id', customer_id))
        .toString();
  }
}

class GphoneAuthData_phoneAuth_userBuilder
    implements
        Builder<GphoneAuthData_phoneAuth_user,
            GphoneAuthData_phoneAuth_userBuilder> {
  _$GphoneAuthData_phoneAuth_user? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _surname;
  String? get surname => _$this._surname;
  set surname(String? surname) => _$this._surname = surname;

  String? _middle_name;
  String? get middle_name => _$this._middle_name;
  set middle_name(String? middle_name) => _$this._middle_name = middle_name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _telephone;
  String? get telephone => _$this._telephone;
  set telephone(String? telephone) => _$this._telephone = telephone;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  _i3.GDateTimeBuilder? _telephone_verified_at;
  _i3.GDateTimeBuilder get telephone_verified_at =>
      _$this._telephone_verified_at ??= new _i3.GDateTimeBuilder();
  set telephone_verified_at(_i3.GDateTimeBuilder? telephone_verified_at) =>
      _$this._telephone_verified_at = telephone_verified_at;

  _i3.GDateTimeBuilder? _email_verified_at;
  _i3.GDateTimeBuilder get email_verified_at =>
      _$this._email_verified_at ??= new _i3.GDateTimeBuilder();
  set email_verified_at(_i3.GDateTimeBuilder? email_verified_at) =>
      _$this._email_verified_at = email_verified_at;

  _i3.GDateTimeBuilder? _created_at;
  _i3.GDateTimeBuilder get created_at =>
      _$this._created_at ??= new _i3.GDateTimeBuilder();
  set created_at(_i3.GDateTimeBuilder? created_at) =>
      _$this._created_at = created_at;

  _i3.GDateTimeBuilder? _updated_at;
  _i3.GDateTimeBuilder get updated_at =>
      _$this._updated_at ??= new _i3.GDateTimeBuilder();
  set updated_at(_i3.GDateTimeBuilder? updated_at) =>
      _$this._updated_at = updated_at;

  bool? _is_guest;
  bool? get is_guest => _$this._is_guest;
  set is_guest(bool? is_guest) => _$this._is_guest = is_guest;

  _i3.GDateTimeBuilder? _last_active_at;
  _i3.GDateTimeBuilder get last_active_at =>
      _$this._last_active_at ??= new _i3.GDateTimeBuilder();
  set last_active_at(_i3.GDateTimeBuilder? last_active_at) =>
      _$this._last_active_at = last_active_at;

  double? _bonus_balance;
  double? get bonus_balance => _$this._bonus_balance;
  set bonus_balance(double? bonus_balance) =>
      _$this._bonus_balance = bonus_balance;

  String? _date_of_birth;
  String? get date_of_birth => _$this._date_of_birth;
  set date_of_birth(String? date_of_birth) =>
      _$this._date_of_birth = date_of_birth;

  String? _customer_id;
  String? get customer_id => _$this._customer_id;
  set customer_id(String? customer_id) => _$this._customer_id = customer_id;

  GphoneAuthData_phoneAuth_userBuilder() {
    GphoneAuthData_phoneAuth_user._initializeBuilder(this);
  }

  GphoneAuthData_phoneAuth_userBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _surname = $v.surname;
      _middle_name = $v.middle_name;
      _email = $v.email;
      _telephone = $v.telephone;
      _active = $v.active;
      _telephone_verified_at = $v.telephone_verified_at?.toBuilder();
      _email_verified_at = $v.email_verified_at?.toBuilder();
      _created_at = $v.created_at.toBuilder();
      _updated_at = $v.updated_at.toBuilder();
      _is_guest = $v.is_guest;
      _last_active_at = $v.last_active_at?.toBuilder();
      _bonus_balance = $v.bonus_balance;
      _date_of_birth = $v.date_of_birth;
      _customer_id = $v.customer_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GphoneAuthData_phoneAuth_user other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GphoneAuthData_phoneAuth_user;
  }

  @override
  void update(void Function(GphoneAuthData_phoneAuth_userBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GphoneAuthData_phoneAuth_user build() {
    _$GphoneAuthData_phoneAuth_user _$result;
    try {
      _$result = _$v ??
          new _$GphoneAuthData_phoneAuth_user._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GphoneAuthData_phoneAuth_user', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GphoneAuthData_phoneAuth_user', 'id'),
              name: name,
              surname: surname,
              middle_name: middle_name,
              email: email,
              telephone: telephone,
              active: active,
              telephone_verified_at: _telephone_verified_at?.build(),
              email_verified_at: _email_verified_at?.build(),
              created_at: created_at.build(),
              updated_at: updated_at.build(),
              is_guest: is_guest,
              last_active_at: _last_active_at?.build(),
              bonus_balance: bonus_balance,
              date_of_birth: date_of_birth,
              customer_id: customer_id);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'telephone_verified_at';
        _telephone_verified_at?.build();
        _$failedField = 'email_verified_at';
        _email_verified_at?.build();
        _$failedField = 'created_at';
        created_at.build();
        _$failedField = 'updated_at';
        updated_at.build();

        _$failedField = 'last_active_at';
        _last_active_at?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GphoneAuthData_phoneAuth_user', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
