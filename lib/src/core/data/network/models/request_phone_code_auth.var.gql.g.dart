// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_phone_code_auth.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GrequestPhoneCodeAuthVars> _$grequestPhoneCodeAuthVarsSerializer =
    new _$GrequestPhoneCodeAuthVarsSerializer();

class _$GrequestPhoneCodeAuthVarsSerializer
    implements StructuredSerializer<GrequestPhoneCodeAuthVars> {
  @override
  final Iterable<Type> types = const [
    GrequestPhoneCodeAuthVars,
    _$GrequestPhoneCodeAuthVars
  ];
  @override
  final String wireName = 'GrequestPhoneCodeAuthVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GrequestPhoneCodeAuthVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'telephone',
      serializers.serialize(object.telephone,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GrequestPhoneCodeAuthVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrequestPhoneCodeAuthVarsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GrequestPhoneCodeAuthVars extends GrequestPhoneCodeAuthVars {
  @override
  final String telephone;

  factory _$GrequestPhoneCodeAuthVars(
          [void Function(GrequestPhoneCodeAuthVarsBuilder)? updates]) =>
      (new GrequestPhoneCodeAuthVarsBuilder()..update(updates)).build();

  _$GrequestPhoneCodeAuthVars._({required this.telephone}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        telephone, 'GrequestPhoneCodeAuthVars', 'telephone');
  }

  @override
  GrequestPhoneCodeAuthVars rebuild(
          void Function(GrequestPhoneCodeAuthVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrequestPhoneCodeAuthVarsBuilder toBuilder() =>
      new GrequestPhoneCodeAuthVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrequestPhoneCodeAuthVars && telephone == other.telephone;
  }

  @override
  int get hashCode {
    return $jf($jc(0, telephone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GrequestPhoneCodeAuthVars')
          ..add('telephone', telephone))
        .toString();
  }
}

class GrequestPhoneCodeAuthVarsBuilder
    implements
        Builder<GrequestPhoneCodeAuthVars, GrequestPhoneCodeAuthVarsBuilder> {
  _$GrequestPhoneCodeAuthVars? _$v;

  String? _telephone;
  String? get telephone => _$this._telephone;
  set telephone(String? telephone) => _$this._telephone = telephone;

  GrequestPhoneCodeAuthVarsBuilder();

  GrequestPhoneCodeAuthVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _telephone = $v.telephone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrequestPhoneCodeAuthVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrequestPhoneCodeAuthVars;
  }

  @override
  void update(void Function(GrequestPhoneCodeAuthVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GrequestPhoneCodeAuthVars build() {
    final _$result = _$v ??
        new _$GrequestPhoneCodeAuthVars._(
            telephone: BuiltValueNullFieldError.checkNotNull(
                telephone, 'GrequestPhoneCodeAuthVars', 'telephone'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
