// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_info_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GOrderInfoFragmentData> _$gOrderInfoFragmentDataSerializer =
    new _$GOrderInfoFragmentDataSerializer();

class _$GOrderInfoFragmentDataSerializer
    implements StructuredSerializer<GOrderInfoFragmentData> {
  @override
  final Iterable<Type> types = const [
    GOrderInfoFragmentData,
    _$GOrderInfoFragmentData
  ];
  @override
  final String wireName = 'GOrderInfoFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOrderInfoFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.order_id;
    if (value != null) {
      result
        ..add('order_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.delivery_cancel_cause;
    if (value != null) {
      result
        ..add('delivery_cancel_cause')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.delivery_cancel_comment;
    if (value != null) {
      result
        ..add('delivery_cancel_comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.delivery_date;
    if (value != null) {
      result
        ..add('delivery_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GDateTime)));
    }
    value = object.actual_time;
    if (value != null) {
      result
        ..add('actual_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GDateTime)));
    }
    value = object.bill_time;
    if (value != null) {
      result
        ..add('bill_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cancel_time;
    if (value != null) {
      result
        ..add('cancel_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.confirm_time;
    if (value != null) {
      result
        ..add('confirm_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.created_time;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GDateTime)));
    }
    value = object.print_time;
    if (value != null) {
      result
        ..add('print_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GDateTime)));
    }
    value = object.send_time;
    if (value != null) {
      result
        ..add('send_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GDateTime)));
    }
    value = object.persons_count;
    if (value != null) {
      result
        ..add('persons_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GOrderInfoFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GOrderInfoFragmentDataBuilder();

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
        case 'order_id':
          result.order_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'delivery_cancel_cause':
          result.delivery_cancel_cause = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'delivery_cancel_comment':
          result.delivery_cancel_comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'delivery_date':
          result.delivery_date.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.GDateTime))! as _i1.GDateTime);
          break;
        case 'actual_time':
          result.actual_time.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.GDateTime))! as _i1.GDateTime);
          break;
        case 'bill_time':
          result.bill_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cancel_time':
          result.cancel_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'confirm_time':
          result.confirm_time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.created_time.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.GDateTime))! as _i1.GDateTime);
          break;
        case 'print_time':
          result.print_time.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.GDateTime))! as _i1.GDateTime);
          break;
        case 'send_time':
          result.send_time.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.GDateTime))! as _i1.GDateTime);
          break;
        case 'persons_count':
          result.persons_count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GOrderInfoFragmentData extends GOrderInfoFragmentData {
  @override
  final String G__typename;
  @override
  final String? order_id;
  @override
  final String? delivery_cancel_cause;
  @override
  final String? delivery_cancel_comment;
  @override
  final _i1.GDateTime? delivery_date;
  @override
  final _i1.GDateTime? actual_time;
  @override
  final String? bill_time;
  @override
  final String? cancel_time;
  @override
  final String? confirm_time;
  @override
  final _i1.GDateTime? created_time;
  @override
  final _i1.GDateTime? print_time;
  @override
  final _i1.GDateTime? send_time;
  @override
  final int? persons_count;

  factory _$GOrderInfoFragmentData(
          [void Function(GOrderInfoFragmentDataBuilder)? updates]) =>
      (new GOrderInfoFragmentDataBuilder()..update(updates)).build();

  _$GOrderInfoFragmentData._(
      {required this.G__typename,
      this.order_id,
      this.delivery_cancel_cause,
      this.delivery_cancel_comment,
      this.delivery_date,
      this.actual_time,
      this.bill_time,
      this.cancel_time,
      this.confirm_time,
      this.created_time,
      this.print_time,
      this.send_time,
      this.persons_count})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GOrderInfoFragmentData', 'G__typename');
  }

  @override
  GOrderInfoFragmentData rebuild(
          void Function(GOrderInfoFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOrderInfoFragmentDataBuilder toBuilder() =>
      new GOrderInfoFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOrderInfoFragmentData &&
        G__typename == other.G__typename &&
        order_id == other.order_id &&
        delivery_cancel_cause == other.delivery_cancel_cause &&
        delivery_cancel_comment == other.delivery_cancel_comment &&
        delivery_date == other.delivery_date &&
        actual_time == other.actual_time &&
        bill_time == other.bill_time &&
        cancel_time == other.cancel_time &&
        confirm_time == other.confirm_time &&
        created_time == other.created_time &&
        print_time == other.print_time &&
        send_time == other.send_time &&
        persons_count == other.persons_count;
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
                                                    $jc(0,
                                                        G__typename.hashCode),
                                                    order_id.hashCode),
                                                delivery_cancel_cause.hashCode),
                                            delivery_cancel_comment.hashCode),
                                        delivery_date.hashCode),
                                    actual_time.hashCode),
                                bill_time.hashCode),
                            cancel_time.hashCode),
                        confirm_time.hashCode),
                    created_time.hashCode),
                print_time.hashCode),
            send_time.hashCode),
        persons_count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GOrderInfoFragmentData')
          ..add('G__typename', G__typename)
          ..add('order_id', order_id)
          ..add('delivery_cancel_cause', delivery_cancel_cause)
          ..add('delivery_cancel_comment', delivery_cancel_comment)
          ..add('delivery_date', delivery_date)
          ..add('actual_time', actual_time)
          ..add('bill_time', bill_time)
          ..add('cancel_time', cancel_time)
          ..add('confirm_time', confirm_time)
          ..add('created_time', created_time)
          ..add('print_time', print_time)
          ..add('send_time', send_time)
          ..add('persons_count', persons_count))
        .toString();
  }
}

class GOrderInfoFragmentDataBuilder
    implements Builder<GOrderInfoFragmentData, GOrderInfoFragmentDataBuilder> {
  _$GOrderInfoFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _order_id;
  String? get order_id => _$this._order_id;
  set order_id(String? order_id) => _$this._order_id = order_id;

  String? _delivery_cancel_cause;
  String? get delivery_cancel_cause => _$this._delivery_cancel_cause;
  set delivery_cancel_cause(String? delivery_cancel_cause) =>
      _$this._delivery_cancel_cause = delivery_cancel_cause;

  String? _delivery_cancel_comment;
  String? get delivery_cancel_comment => _$this._delivery_cancel_comment;
  set delivery_cancel_comment(String? delivery_cancel_comment) =>
      _$this._delivery_cancel_comment = delivery_cancel_comment;

  _i1.GDateTimeBuilder? _delivery_date;
  _i1.GDateTimeBuilder get delivery_date =>
      _$this._delivery_date ??= new _i1.GDateTimeBuilder();
  set delivery_date(_i1.GDateTimeBuilder? delivery_date) =>
      _$this._delivery_date = delivery_date;

  _i1.GDateTimeBuilder? _actual_time;
  _i1.GDateTimeBuilder get actual_time =>
      _$this._actual_time ??= new _i1.GDateTimeBuilder();
  set actual_time(_i1.GDateTimeBuilder? actual_time) =>
      _$this._actual_time = actual_time;

  String? _bill_time;
  String? get bill_time => _$this._bill_time;
  set bill_time(String? bill_time) => _$this._bill_time = bill_time;

  String? _cancel_time;
  String? get cancel_time => _$this._cancel_time;
  set cancel_time(String? cancel_time) => _$this._cancel_time = cancel_time;

  String? _confirm_time;
  String? get confirm_time => _$this._confirm_time;
  set confirm_time(String? confirm_time) => _$this._confirm_time = confirm_time;

  _i1.GDateTimeBuilder? _created_time;
  _i1.GDateTimeBuilder get created_time =>
      _$this._created_time ??= new _i1.GDateTimeBuilder();
  set created_time(_i1.GDateTimeBuilder? created_time) =>
      _$this._created_time = created_time;

  _i1.GDateTimeBuilder? _print_time;
  _i1.GDateTimeBuilder get print_time =>
      _$this._print_time ??= new _i1.GDateTimeBuilder();
  set print_time(_i1.GDateTimeBuilder? print_time) =>
      _$this._print_time = print_time;

  _i1.GDateTimeBuilder? _send_time;
  _i1.GDateTimeBuilder get send_time =>
      _$this._send_time ??= new _i1.GDateTimeBuilder();
  set send_time(_i1.GDateTimeBuilder? send_time) =>
      _$this._send_time = send_time;

  int? _persons_count;
  int? get persons_count => _$this._persons_count;
  set persons_count(int? persons_count) =>
      _$this._persons_count = persons_count;

  GOrderInfoFragmentDataBuilder() {
    GOrderInfoFragmentData._initializeBuilder(this);
  }

  GOrderInfoFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _order_id = $v.order_id;
      _delivery_cancel_cause = $v.delivery_cancel_cause;
      _delivery_cancel_comment = $v.delivery_cancel_comment;
      _delivery_date = $v.delivery_date?.toBuilder();
      _actual_time = $v.actual_time?.toBuilder();
      _bill_time = $v.bill_time;
      _cancel_time = $v.cancel_time;
      _confirm_time = $v.confirm_time;
      _created_time = $v.created_time?.toBuilder();
      _print_time = $v.print_time?.toBuilder();
      _send_time = $v.send_time?.toBuilder();
      _persons_count = $v.persons_count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GOrderInfoFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOrderInfoFragmentData;
  }

  @override
  void update(void Function(GOrderInfoFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GOrderInfoFragmentData build() {
    _$GOrderInfoFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GOrderInfoFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GOrderInfoFragmentData', 'G__typename'),
              order_id: order_id,
              delivery_cancel_cause: delivery_cancel_cause,
              delivery_cancel_comment: delivery_cancel_comment,
              delivery_date: _delivery_date?.build(),
              actual_time: _actual_time?.build(),
              bill_time: bill_time,
              cancel_time: cancel_time,
              confirm_time: confirm_time,
              created_time: _created_time?.build(),
              print_time: _print_time?.build(),
              send_time: _send_time?.build(),
              persons_count: persons_count);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'delivery_date';
        _delivery_date?.build();
        _$failedField = 'actual_time';
        _actual_time?.build();

        _$failedField = 'created_time';
        _created_time?.build();
        _$failedField = 'print_time';
        _print_time?.build();
        _$failedField = 'send_time';
        _send_time?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GOrderInfoFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
