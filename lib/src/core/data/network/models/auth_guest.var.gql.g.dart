// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_guest.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GauthGuestVars> _$gauthGuestVarsSerializer =
    new _$GauthGuestVarsSerializer();

class _$GauthGuestVarsSerializer
    implements StructuredSerializer<GauthGuestVars> {
  @override
  final Iterable<Type> types = const [GauthGuestVars, _$GauthGuestVars];
  @override
  final String wireName = 'GauthGuestVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GauthGuestVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GauthGuestVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GauthGuestVarsBuilder().build();
  }
}

class _$GauthGuestVars extends GauthGuestVars {
  factory _$GauthGuestVars([void Function(GauthGuestVarsBuilder)? updates]) =>
      (new GauthGuestVarsBuilder()..update(updates)).build();

  _$GauthGuestVars._() : super._();

  @override
  GauthGuestVars rebuild(void Function(GauthGuestVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GauthGuestVarsBuilder toBuilder() =>
      new GauthGuestVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GauthGuestVars;
  }

  @override
  int get hashCode {
    return 202131725;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GauthGuestVars').toString();
  }
}

class GauthGuestVarsBuilder
    implements Builder<GauthGuestVars, GauthGuestVarsBuilder> {
  _$GauthGuestVars? _$v;

  GauthGuestVarsBuilder();

  @override
  void replace(GauthGuestVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GauthGuestVars;
  }

  @override
  void update(void Function(GauthGuestVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GauthGuestVars build() {
    final _$result = _$v ?? new _$GauthGuestVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
