// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_order_feedback.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSendOrderFeedbackData> _$gSendOrderFeedbackDataSerializer =
    new _$GSendOrderFeedbackDataSerializer();
Serializer<GSendOrderFeedbackData_sendOrderFeedback>
    _$gSendOrderFeedbackDataSendOrderFeedbackSerializer =
    new _$GSendOrderFeedbackData_sendOrderFeedbackSerializer();

class _$GSendOrderFeedbackDataSerializer
    implements StructuredSerializer<GSendOrderFeedbackData> {
  @override
  final Iterable<Type> types = const [
    GSendOrderFeedbackData,
    _$GSendOrderFeedbackData
  ];
  @override
  final String wireName = 'GSendOrderFeedbackData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSendOrderFeedbackData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.sendOrderFeedback;
    if (value != null) {
      result
        ..add('sendOrderFeedback')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GSendOrderFeedbackData_sendOrderFeedback)));
    }
    return result;
  }

  @override
  GSendOrderFeedbackData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSendOrderFeedbackDataBuilder();

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
        case 'sendOrderFeedback':
          result.sendOrderFeedback.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GSendOrderFeedbackData_sendOrderFeedback))!
              as GSendOrderFeedbackData_sendOrderFeedback);
          break;
      }
    }

    return result.build();
  }
}

class _$GSendOrderFeedbackData_sendOrderFeedbackSerializer
    implements StructuredSerializer<GSendOrderFeedbackData_sendOrderFeedback> {
  @override
  final Iterable<Type> types = const [
    GSendOrderFeedbackData_sendOrderFeedback,
    _$GSendOrderFeedbackData_sendOrderFeedback
  ];
  @override
  final String wireName = 'GSendOrderFeedbackData_sendOrderFeedback';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSendOrderFeedbackData_sendOrderFeedback object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GSendOrderFeedbackData_sendOrderFeedback deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSendOrderFeedbackData_sendOrderFeedbackBuilder();

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
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GSendOrderFeedbackData extends GSendOrderFeedbackData {
  @override
  final String G__typename;
  @override
  final GSendOrderFeedbackData_sendOrderFeedback? sendOrderFeedback;

  factory _$GSendOrderFeedbackData(
          [void Function(GSendOrderFeedbackDataBuilder)? updates]) =>
      (new GSendOrderFeedbackDataBuilder()..update(updates)).build();

  _$GSendOrderFeedbackData._(
      {required this.G__typename, this.sendOrderFeedback})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GSendOrderFeedbackData', 'G__typename');
  }

  @override
  GSendOrderFeedbackData rebuild(
          void Function(GSendOrderFeedbackDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendOrderFeedbackDataBuilder toBuilder() =>
      new GSendOrderFeedbackDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendOrderFeedbackData &&
        G__typename == other.G__typename &&
        sendOrderFeedback == other.sendOrderFeedback;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), sendOrderFeedback.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSendOrderFeedbackData')
          ..add('G__typename', G__typename)
          ..add('sendOrderFeedback', sendOrderFeedback))
        .toString();
  }
}

class GSendOrderFeedbackDataBuilder
    implements Builder<GSendOrderFeedbackData, GSendOrderFeedbackDataBuilder> {
  _$GSendOrderFeedbackData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GSendOrderFeedbackData_sendOrderFeedbackBuilder? _sendOrderFeedback;
  GSendOrderFeedbackData_sendOrderFeedbackBuilder get sendOrderFeedback =>
      _$this._sendOrderFeedback ??=
          new GSendOrderFeedbackData_sendOrderFeedbackBuilder();
  set sendOrderFeedback(
          GSendOrderFeedbackData_sendOrderFeedbackBuilder? sendOrderFeedback) =>
      _$this._sendOrderFeedback = sendOrderFeedback;

  GSendOrderFeedbackDataBuilder() {
    GSendOrderFeedbackData._initializeBuilder(this);
  }

  GSendOrderFeedbackDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _sendOrderFeedback = $v.sendOrderFeedback?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendOrderFeedbackData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendOrderFeedbackData;
  }

  @override
  void update(void Function(GSendOrderFeedbackDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSendOrderFeedbackData build() {
    _$GSendOrderFeedbackData _$result;
    try {
      _$result = _$v ??
          new _$GSendOrderFeedbackData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GSendOrderFeedbackData', 'G__typename'),
              sendOrderFeedback: _sendOrderFeedback?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sendOrderFeedback';
        _sendOrderFeedback?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GSendOrderFeedbackData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GSendOrderFeedbackData_sendOrderFeedback
    extends GSendOrderFeedbackData_sendOrderFeedback {
  @override
  final String G__typename;
  @override
  final int id;

  factory _$GSendOrderFeedbackData_sendOrderFeedback(
          [void Function(GSendOrderFeedbackData_sendOrderFeedbackBuilder)?
              updates]) =>
      (new GSendOrderFeedbackData_sendOrderFeedbackBuilder()..update(updates))
          .build();

  _$GSendOrderFeedbackData_sendOrderFeedback._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GSendOrderFeedbackData_sendOrderFeedback', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GSendOrderFeedbackData_sendOrderFeedback', 'id');
  }

  @override
  GSendOrderFeedbackData_sendOrderFeedback rebuild(
          void Function(GSendOrderFeedbackData_sendOrderFeedbackBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendOrderFeedbackData_sendOrderFeedbackBuilder toBuilder() =>
      new GSendOrderFeedbackData_sendOrderFeedbackBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendOrderFeedbackData_sendOrderFeedback &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GSendOrderFeedbackData_sendOrderFeedback')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GSendOrderFeedbackData_sendOrderFeedbackBuilder
    implements
        Builder<GSendOrderFeedbackData_sendOrderFeedback,
            GSendOrderFeedbackData_sendOrderFeedbackBuilder> {
  _$GSendOrderFeedbackData_sendOrderFeedback? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GSendOrderFeedbackData_sendOrderFeedbackBuilder() {
    GSendOrderFeedbackData_sendOrderFeedback._initializeBuilder(this);
  }

  GSendOrderFeedbackData_sendOrderFeedbackBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendOrderFeedbackData_sendOrderFeedback other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendOrderFeedbackData_sendOrderFeedback;
  }

  @override
  void update(
      void Function(GSendOrderFeedbackData_sendOrderFeedbackBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSendOrderFeedbackData_sendOrderFeedback build() {
    final _$result = _$v ??
        new _$GSendOrderFeedbackData_sendOrderFeedback._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GSendOrderFeedbackData_sendOrderFeedback', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GSendOrderFeedbackData_sendOrderFeedback', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
