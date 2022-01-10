// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminal_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GTerminalFragmentData> _$gTerminalFragmentDataSerializer =
    new _$GTerminalFragmentDataSerializer();

class _$GTerminalFragmentDataSerializer
    implements StructuredSerializer<GTerminalFragmentData> {
  @override
  final Iterable<Type> types = const [
    GTerminalFragmentData,
    _$GTerminalFragmentData
  ];
  @override
  final String wireName = 'GTerminalFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTerminalFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GTerminalFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GTerminalFragmentDataBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GTerminalFragmentData extends GTerminalFragmentData {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GTerminalFragmentData(
          [void Function(GTerminalFragmentDataBuilder)? updates]) =>
      (new GTerminalFragmentDataBuilder()..update(updates)).build();

  _$GTerminalFragmentData._({required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GTerminalFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GTerminalFragmentData', 'id');
  }

  @override
  GTerminalFragmentData rebuild(
          void Function(GTerminalFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTerminalFragmentDataBuilder toBuilder() =>
      new GTerminalFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTerminalFragmentData &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GTerminalFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GTerminalFragmentDataBuilder
    implements Builder<GTerminalFragmentData, GTerminalFragmentDataBuilder> {
  _$GTerminalFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GTerminalFragmentDataBuilder() {
    GTerminalFragmentData._initializeBuilder(this);
  }

  GTerminalFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GTerminalFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTerminalFragmentData;
  }

  @override
  void update(void Function(GTerminalFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GTerminalFragmentData build() {
    final _$result = _$v ??
        new _$GTerminalFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GTerminalFragmentData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GTerminalFragmentData', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
