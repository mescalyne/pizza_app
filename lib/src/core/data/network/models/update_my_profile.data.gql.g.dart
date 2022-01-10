// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_my_profile.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GupdateCurrentUserData> _$gupdateCurrentUserDataSerializer =
    new _$GupdateCurrentUserDataSerializer();
Serializer<GupdateCurrentUserData_updateMyProfile>
    _$gupdateCurrentUserDataUpdateMyProfileSerializer =
    new _$GupdateCurrentUserData_updateMyProfileSerializer();

class _$GupdateCurrentUserDataSerializer
    implements StructuredSerializer<GupdateCurrentUserData> {
  @override
  final Iterable<Type> types = const [
    GupdateCurrentUserData,
    _$GupdateCurrentUserData
  ];
  @override
  final String wireName = 'GupdateCurrentUserData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateCurrentUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.updateMyProfile;
    if (value != null) {
      result
        ..add('updateMyProfile')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GupdateCurrentUserData_updateMyProfile)));
    }
    return result;
  }

  @override
  GupdateCurrentUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateCurrentUserDataBuilder();

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
        case 'updateMyProfile':
          result.updateMyProfile.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GupdateCurrentUserData_updateMyProfile))!
              as GupdateCurrentUserData_updateMyProfile);
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateCurrentUserData_updateMyProfileSerializer
    implements StructuredSerializer<GupdateCurrentUserData_updateMyProfile> {
  @override
  final Iterable<Type> types = const [
    GupdateCurrentUserData_updateMyProfile,
    _$GupdateCurrentUserData_updateMyProfile
  ];
  @override
  final String wireName = 'GupdateCurrentUserData_updateMyProfile';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateCurrentUserData_updateMyProfile object,
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
  GupdateCurrentUserData_updateMyProfile deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateCurrentUserData_updateMyProfileBuilder();

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

class _$GupdateCurrentUserData extends GupdateCurrentUserData {
  @override
  final String G__typename;
  @override
  final GupdateCurrentUserData_updateMyProfile? updateMyProfile;

  factory _$GupdateCurrentUserData(
          [void Function(GupdateCurrentUserDataBuilder)? updates]) =>
      (new GupdateCurrentUserDataBuilder()..update(updates)).build();

  _$GupdateCurrentUserData._({required this.G__typename, this.updateMyProfile})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GupdateCurrentUserData', 'G__typename');
  }

  @override
  GupdateCurrentUserData rebuild(
          void Function(GupdateCurrentUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateCurrentUserDataBuilder toBuilder() =>
      new GupdateCurrentUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateCurrentUserData &&
        G__typename == other.G__typename &&
        updateMyProfile == other.updateMyProfile;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), updateMyProfile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GupdateCurrentUserData')
          ..add('G__typename', G__typename)
          ..add('updateMyProfile', updateMyProfile))
        .toString();
  }
}

class GupdateCurrentUserDataBuilder
    implements Builder<GupdateCurrentUserData, GupdateCurrentUserDataBuilder> {
  _$GupdateCurrentUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GupdateCurrentUserData_updateMyProfileBuilder? _updateMyProfile;
  GupdateCurrentUserData_updateMyProfileBuilder get updateMyProfile =>
      _$this._updateMyProfile ??=
          new GupdateCurrentUserData_updateMyProfileBuilder();
  set updateMyProfile(
          GupdateCurrentUserData_updateMyProfileBuilder? updateMyProfile) =>
      _$this._updateMyProfile = updateMyProfile;

  GupdateCurrentUserDataBuilder() {
    GupdateCurrentUserData._initializeBuilder(this);
  }

  GupdateCurrentUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateMyProfile = $v.updateMyProfile?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateCurrentUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateCurrentUserData;
  }

  @override
  void update(void Function(GupdateCurrentUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GupdateCurrentUserData build() {
    _$GupdateCurrentUserData _$result;
    try {
      _$result = _$v ??
          new _$GupdateCurrentUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GupdateCurrentUserData', 'G__typename'),
              updateMyProfile: _updateMyProfile?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateMyProfile';
        _updateMyProfile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GupdateCurrentUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GupdateCurrentUserData_updateMyProfile
    extends GupdateCurrentUserData_updateMyProfile {
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

  factory _$GupdateCurrentUserData_updateMyProfile(
          [void Function(GupdateCurrentUserData_updateMyProfileBuilder)?
              updates]) =>
      (new GupdateCurrentUserData_updateMyProfileBuilder()..update(updates))
          .build();

  _$GupdateCurrentUserData_updateMyProfile._(
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
        G__typename, 'GupdateCurrentUserData_updateMyProfile', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GupdateCurrentUserData_updateMyProfile', 'id');
    BuiltValueNullFieldError.checkNotNull(
        created_at, 'GupdateCurrentUserData_updateMyProfile', 'created_at');
    BuiltValueNullFieldError.checkNotNull(
        updated_at, 'GupdateCurrentUserData_updateMyProfile', 'updated_at');
  }

  @override
  GupdateCurrentUserData_updateMyProfile rebuild(
          void Function(GupdateCurrentUserData_updateMyProfileBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateCurrentUserData_updateMyProfileBuilder toBuilder() =>
      new GupdateCurrentUserData_updateMyProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateCurrentUserData_updateMyProfile &&
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
    return (newBuiltValueToStringHelper(
            'GupdateCurrentUserData_updateMyProfile')
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

class GupdateCurrentUserData_updateMyProfileBuilder
    implements
        Builder<GupdateCurrentUserData_updateMyProfile,
            GupdateCurrentUserData_updateMyProfileBuilder> {
  _$GupdateCurrentUserData_updateMyProfile? _$v;

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

  GupdateCurrentUserData_updateMyProfileBuilder() {
    GupdateCurrentUserData_updateMyProfile._initializeBuilder(this);
  }

  GupdateCurrentUserData_updateMyProfileBuilder get _$this {
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
  void replace(GupdateCurrentUserData_updateMyProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateCurrentUserData_updateMyProfile;
  }

  @override
  void update(
      void Function(GupdateCurrentUserData_updateMyProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GupdateCurrentUserData_updateMyProfile build() {
    _$GupdateCurrentUserData_updateMyProfile _$result;
    try {
      _$result = _$v ??
          new _$GupdateCurrentUserData_updateMyProfile._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GupdateCurrentUserData_updateMyProfile', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GupdateCurrentUserData_updateMyProfile', 'id'),
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
            'GupdateCurrentUserData_updateMyProfile',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
