// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_phone_code_register.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GrequestPhoneCodeRegisterData>
    _$grequestPhoneCodeRegisterDataSerializer =
    new _$GrequestPhoneCodeRegisterDataSerializer();

class _$GrequestPhoneCodeRegisterDataSerializer
    implements StructuredSerializer<GrequestPhoneCodeRegisterData> {
  @override
  final Iterable<Type> types = const [
    GrequestPhoneCodeRegisterData,
    _$GrequestPhoneCodeRegisterData
  ];
  @override
  final String wireName = 'GrequestPhoneCodeRegisterData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GrequestPhoneCodeRegisterData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'requestPhoneCodeRegister',
      serializers.serialize(object.requestPhoneCodeRegister,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GrequestPhoneCodeRegisterData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrequestPhoneCodeRegisterDataBuilder();

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
        case 'requestPhoneCodeRegister':
          result.requestPhoneCodeRegister = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GrequestPhoneCodeRegisterData extends GrequestPhoneCodeRegisterData {
  @override
  final String G__typename;
  @override
  final String requestPhoneCodeRegister;

  factory _$GrequestPhoneCodeRegisterData(
          [void Function(GrequestPhoneCodeRegisterDataBuilder)? updates]) =>
      (new GrequestPhoneCodeRegisterDataBuilder()..update(updates)).build();

  _$GrequestPhoneCodeRegisterData._(
      {required this.G__typename, required this.requestPhoneCodeRegister})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GrequestPhoneCodeRegisterData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(requestPhoneCodeRegister,
        'GrequestPhoneCodeRegisterData', 'requestPhoneCodeRegister');
  }

  @override
  GrequestPhoneCodeRegisterData rebuild(
          void Function(GrequestPhoneCodeRegisterDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrequestPhoneCodeRegisterDataBuilder toBuilder() =>
      new GrequestPhoneCodeRegisterDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrequestPhoneCodeRegisterData &&
        G__typename == other.G__typename &&
        requestPhoneCodeRegister == other.requestPhoneCodeRegister;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), requestPhoneCodeRegister.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GrequestPhoneCodeRegisterData')
          ..add('G__typename', G__typename)
          ..add('requestPhoneCodeRegister', requestPhoneCodeRegister))
        .toString();
  }
}

class GrequestPhoneCodeRegisterDataBuilder
    implements
        Builder<GrequestPhoneCodeRegisterData,
            GrequestPhoneCodeRegisterDataBuilder> {
  _$GrequestPhoneCodeRegisterData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _requestPhoneCodeRegister;
  String? get requestPhoneCodeRegister => _$this._requestPhoneCodeRegister;
  set requestPhoneCodeRegister(String? requestPhoneCodeRegister) =>
      _$this._requestPhoneCodeRegister = requestPhoneCodeRegister;

  GrequestPhoneCodeRegisterDataBuilder() {
    GrequestPhoneCodeRegisterData._initializeBuilder(this);
  }

  GrequestPhoneCodeRegisterDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _requestPhoneCodeRegister = $v.requestPhoneCodeRegister;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrequestPhoneCodeRegisterData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrequestPhoneCodeRegisterData;
  }

  @override
  void update(void Function(GrequestPhoneCodeRegisterDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GrequestPhoneCodeRegisterData build() {
    final _$result = _$v ??
        new _$GrequestPhoneCodeRegisterData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GrequestPhoneCodeRegisterData', 'G__typename'),
            requestPhoneCodeRegister: BuiltValueNullFieldError.checkNotNull(
                requestPhoneCodeRegister,
                'GrequestPhoneCodeRegisterData',
                'requestPhoneCodeRegister'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
