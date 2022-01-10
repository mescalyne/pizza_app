// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_phone_code_auth.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GrequestPhoneCodeAuthData> _$grequestPhoneCodeAuthDataSerializer =
    new _$GrequestPhoneCodeAuthDataSerializer();

class _$GrequestPhoneCodeAuthDataSerializer
    implements StructuredSerializer<GrequestPhoneCodeAuthData> {
  @override
  final Iterable<Type> types = const [
    GrequestPhoneCodeAuthData,
    _$GrequestPhoneCodeAuthData
  ];
  @override
  final String wireName = 'GrequestPhoneCodeAuthData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GrequestPhoneCodeAuthData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'requestPhoneCodeAuth',
      serializers.serialize(object.requestPhoneCodeAuth,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GrequestPhoneCodeAuthData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GrequestPhoneCodeAuthDataBuilder();

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
        case 'requestPhoneCodeAuth':
          result.requestPhoneCodeAuth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GrequestPhoneCodeAuthData extends GrequestPhoneCodeAuthData {
  @override
  final String G__typename;
  @override
  final String requestPhoneCodeAuth;

  factory _$GrequestPhoneCodeAuthData(
          [void Function(GrequestPhoneCodeAuthDataBuilder)? updates]) =>
      (new GrequestPhoneCodeAuthDataBuilder()..update(updates)).build();

  _$GrequestPhoneCodeAuthData._(
      {required this.G__typename, required this.requestPhoneCodeAuth})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GrequestPhoneCodeAuthData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(requestPhoneCodeAuth,
        'GrequestPhoneCodeAuthData', 'requestPhoneCodeAuth');
  }

  @override
  GrequestPhoneCodeAuthData rebuild(
          void Function(GrequestPhoneCodeAuthDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrequestPhoneCodeAuthDataBuilder toBuilder() =>
      new GrequestPhoneCodeAuthDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrequestPhoneCodeAuthData &&
        G__typename == other.G__typename &&
        requestPhoneCodeAuth == other.requestPhoneCodeAuth;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), requestPhoneCodeAuth.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GrequestPhoneCodeAuthData')
          ..add('G__typename', G__typename)
          ..add('requestPhoneCodeAuth', requestPhoneCodeAuth))
        .toString();
  }
}

class GrequestPhoneCodeAuthDataBuilder
    implements
        Builder<GrequestPhoneCodeAuthData, GrequestPhoneCodeAuthDataBuilder> {
  _$GrequestPhoneCodeAuthData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _requestPhoneCodeAuth;
  String? get requestPhoneCodeAuth => _$this._requestPhoneCodeAuth;
  set requestPhoneCodeAuth(String? requestPhoneCodeAuth) =>
      _$this._requestPhoneCodeAuth = requestPhoneCodeAuth;

  GrequestPhoneCodeAuthDataBuilder() {
    GrequestPhoneCodeAuthData._initializeBuilder(this);
  }

  GrequestPhoneCodeAuthDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _requestPhoneCodeAuth = $v.requestPhoneCodeAuth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrequestPhoneCodeAuthData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrequestPhoneCodeAuthData;
  }

  @override
  void update(void Function(GrequestPhoneCodeAuthDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GrequestPhoneCodeAuthData build() {
    final _$result = _$v ??
        new _$GrequestPhoneCodeAuthData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GrequestPhoneCodeAuthData', 'G__typename'),
            requestPhoneCodeAuth: BuiltValueNullFieldError.checkNotNull(
                requestPhoneCodeAuth,
                'GrequestPhoneCodeAuthData',
                'requestPhoneCodeAuth'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
