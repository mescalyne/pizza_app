// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUserFragmentData> _$gUserFragmentDataSerializer =
    new _$GUserFragmentDataSerializer();

class _$GUserFragmentDataSerializer
    implements StructuredSerializer<GUserFragmentData> {
  @override
  final Iterable<Type> types = const [GUserFragmentData, _$GUserFragmentData];
  @override
  final String wireName = 'GUserFragmentData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUserFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'created_at',
      serializers.serialize(object.created_at,
          specifiedType: const FullType(_i1.GDateTime)),
      'updated_at',
      serializers.serialize(object.updated_at,
          specifiedType: const FullType(_i1.GDateTime)),
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
            specifiedType: const FullType(_i1.GDateTime)));
    }
    value = object.email_verified_at;
    if (value != null) {
      result
        ..add('email_verified_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GDateTime)));
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
            specifiedType: const FullType(_i1.GDateTime)));
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
  GUserFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUserFragmentDataBuilder();

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
              specifiedType: const FullType(_i1.GDateTime))! as _i1.GDateTime);
          break;
        case 'email_verified_at':
          result.email_verified_at.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.GDateTime))! as _i1.GDateTime);
          break;
        case 'created_at':
          result.created_at.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.GDateTime))! as _i1.GDateTime);
          break;
        case 'updated_at':
          result.updated_at.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.GDateTime))! as _i1.GDateTime);
          break;
        case 'is_guest':
          result.is_guest = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'last_active_at':
          result.last_active_at.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.GDateTime))! as _i1.GDateTime);
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

class _$GUserFragmentData extends GUserFragmentData {
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
  final _i1.GDateTime? telephone_verified_at;
  @override
  final _i1.GDateTime? email_verified_at;
  @override
  final _i1.GDateTime created_at;
  @override
  final _i1.GDateTime updated_at;
  @override
  final bool? is_guest;
  @override
  final _i1.GDateTime? last_active_at;
  @override
  final double? bonus_balance;
  @override
  final String? date_of_birth;
  @override
  final String? customer_id;

  factory _$GUserFragmentData(
          [void Function(GUserFragmentDataBuilder)? updates]) =>
      (new GUserFragmentDataBuilder()..update(updates)).build();

  _$GUserFragmentData._(
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
        G__typename, 'GUserFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GUserFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        created_at, 'GUserFragmentData', 'created_at');
    BuiltValueNullFieldError.checkNotNull(
        updated_at, 'GUserFragmentData', 'updated_at');
  }

  @override
  GUserFragmentData rebuild(void Function(GUserFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUserFragmentDataBuilder toBuilder() =>
      new GUserFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUserFragmentData &&
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
    return (newBuiltValueToStringHelper('GUserFragmentData')
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

class GUserFragmentDataBuilder
    implements Builder<GUserFragmentData, GUserFragmentDataBuilder> {
  _$GUserFragmentData? _$v;

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

  _i1.GDateTimeBuilder? _telephone_verified_at;
  _i1.GDateTimeBuilder get telephone_verified_at =>
      _$this._telephone_verified_at ??= new _i1.GDateTimeBuilder();
  set telephone_verified_at(_i1.GDateTimeBuilder? telephone_verified_at) =>
      _$this._telephone_verified_at = telephone_verified_at;

  _i1.GDateTimeBuilder? _email_verified_at;
  _i1.GDateTimeBuilder get email_verified_at =>
      _$this._email_verified_at ??= new _i1.GDateTimeBuilder();
  set email_verified_at(_i1.GDateTimeBuilder? email_verified_at) =>
      _$this._email_verified_at = email_verified_at;

  _i1.GDateTimeBuilder? _created_at;
  _i1.GDateTimeBuilder get created_at =>
      _$this._created_at ??= new _i1.GDateTimeBuilder();
  set created_at(_i1.GDateTimeBuilder? created_at) =>
      _$this._created_at = created_at;

  _i1.GDateTimeBuilder? _updated_at;
  _i1.GDateTimeBuilder get updated_at =>
      _$this._updated_at ??= new _i1.GDateTimeBuilder();
  set updated_at(_i1.GDateTimeBuilder? updated_at) =>
      _$this._updated_at = updated_at;

  bool? _is_guest;
  bool? get is_guest => _$this._is_guest;
  set is_guest(bool? is_guest) => _$this._is_guest = is_guest;

  _i1.GDateTimeBuilder? _last_active_at;
  _i1.GDateTimeBuilder get last_active_at =>
      _$this._last_active_at ??= new _i1.GDateTimeBuilder();
  set last_active_at(_i1.GDateTimeBuilder? last_active_at) =>
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

  GUserFragmentDataBuilder() {
    GUserFragmentData._initializeBuilder(this);
  }

  GUserFragmentDataBuilder get _$this {
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
  void replace(GUserFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUserFragmentData;
  }

  @override
  void update(void Function(GUserFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUserFragmentData build() {
    _$GUserFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GUserFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GUserFragmentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GUserFragmentData', 'id'),
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
            'GUserFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
