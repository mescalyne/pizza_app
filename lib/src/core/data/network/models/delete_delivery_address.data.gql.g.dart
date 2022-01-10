// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_delivery_address.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteDeliveryAddressData> _$gDeleteDeliveryAddressDataSerializer =
    new _$GDeleteDeliveryAddressDataSerializer();

class _$GDeleteDeliveryAddressDataSerializer
    implements StructuredSerializer<GDeleteDeliveryAddressData> {
  @override
  final Iterable<Type> types = const [
    GDeleteDeliveryAddressData,
    _$GDeleteDeliveryAddressData
  ];
  @override
  final String wireName = 'GDeleteDeliveryAddressData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteDeliveryAddressData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deleteDeliveryAddress;
    if (value != null) {
      result
        ..add('deleteDeliveryAddress')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GDeleteDeliveryAddressData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteDeliveryAddressDataBuilder();

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
        case 'deleteDeliveryAddress':
          result.deleteDeliveryAddress = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteDeliveryAddressData extends GDeleteDeliveryAddressData {
  @override
  final String G__typename;
  @override
  final bool? deleteDeliveryAddress;

  factory _$GDeleteDeliveryAddressData(
          [void Function(GDeleteDeliveryAddressDataBuilder)? updates]) =>
      (new GDeleteDeliveryAddressDataBuilder()..update(updates)).build();

  _$GDeleteDeliveryAddressData._(
      {required this.G__typename, this.deleteDeliveryAddress})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GDeleteDeliveryAddressData', 'G__typename');
  }

  @override
  GDeleteDeliveryAddressData rebuild(
          void Function(GDeleteDeliveryAddressDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteDeliveryAddressDataBuilder toBuilder() =>
      new GDeleteDeliveryAddressDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteDeliveryAddressData &&
        G__typename == other.G__typename &&
        deleteDeliveryAddress == other.deleteDeliveryAddress;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), deleteDeliveryAddress.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteDeliveryAddressData')
          ..add('G__typename', G__typename)
          ..add('deleteDeliveryAddress', deleteDeliveryAddress))
        .toString();
  }
}

class GDeleteDeliveryAddressDataBuilder
    implements
        Builder<GDeleteDeliveryAddressData, GDeleteDeliveryAddressDataBuilder> {
  _$GDeleteDeliveryAddressData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _deleteDeliveryAddress;
  bool? get deleteDeliveryAddress => _$this._deleteDeliveryAddress;
  set deleteDeliveryAddress(bool? deleteDeliveryAddress) =>
      _$this._deleteDeliveryAddress = deleteDeliveryAddress;

  GDeleteDeliveryAddressDataBuilder() {
    GDeleteDeliveryAddressData._initializeBuilder(this);
  }

  GDeleteDeliveryAddressDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteDeliveryAddress = $v.deleteDeliveryAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteDeliveryAddressData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteDeliveryAddressData;
  }

  @override
  void update(void Function(GDeleteDeliveryAddressDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteDeliveryAddressData build() {
    final _$result = _$v ??
        new _$GDeleteDeliveryAddressData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GDeleteDeliveryAddressData', 'G__typename'),
            deleteDeliveryAddress: deleteDeliveryAddress);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
