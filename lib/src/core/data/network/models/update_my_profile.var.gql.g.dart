// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_my_profile.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GupdateCurrentUserVars> _$gupdateCurrentUserVarsSerializer =
    new _$GupdateCurrentUserVarsSerializer();

class _$GupdateCurrentUserVarsSerializer
    implements StructuredSerializer<GupdateCurrentUserVars> {
  @override
  final Iterable<Type> types = const [
    GupdateCurrentUserVars,
    _$GupdateCurrentUserVars
  ];
  @override
  final String wireName = 'GupdateCurrentUserVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GupdateCurrentUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date_of_birth;
    if (value != null) {
      result
        ..add('date_of_birth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GupdateCurrentUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GupdateCurrentUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date_of_birth':
          result.date_of_birth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GupdateCurrentUserVars extends GupdateCurrentUserVars {
  @override
  final String name;
  @override
  final String? email;
  @override
  final String? date_of_birth;

  factory _$GupdateCurrentUserVars(
          [void Function(GupdateCurrentUserVarsBuilder)? updates]) =>
      (new GupdateCurrentUserVarsBuilder()..update(updates)).build();

  _$GupdateCurrentUserVars._(
      {required this.name, this.email, this.date_of_birth})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, 'GupdateCurrentUserVars', 'name');
  }

  @override
  GupdateCurrentUserVars rebuild(
          void Function(GupdateCurrentUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GupdateCurrentUserVarsBuilder toBuilder() =>
      new GupdateCurrentUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GupdateCurrentUserVars &&
        name == other.name &&
        email == other.email &&
        date_of_birth == other.date_of_birth;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, name.hashCode), email.hashCode), date_of_birth.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GupdateCurrentUserVars')
          ..add('name', name)
          ..add('email', email)
          ..add('date_of_birth', date_of_birth))
        .toString();
  }
}

class GupdateCurrentUserVarsBuilder
    implements Builder<GupdateCurrentUserVars, GupdateCurrentUserVarsBuilder> {
  _$GupdateCurrentUserVars? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _date_of_birth;
  String? get date_of_birth => _$this._date_of_birth;
  set date_of_birth(String? date_of_birth) =>
      _$this._date_of_birth = date_of_birth;

  GupdateCurrentUserVarsBuilder();

  GupdateCurrentUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _date_of_birth = $v.date_of_birth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GupdateCurrentUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GupdateCurrentUserVars;
  }

  @override
  void update(void Function(GupdateCurrentUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GupdateCurrentUserVars build() {
    final _$result = _$v ??
        new _$GupdateCurrentUserVars._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GupdateCurrentUserVars', 'name'),
            email: email,
            date_of_birth: date_of_birth);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
