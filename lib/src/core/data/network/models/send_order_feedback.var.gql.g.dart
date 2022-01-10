// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_order_feedback.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GSendOrderFeedbackVars> _$gSendOrderFeedbackVarsSerializer =
    new _$GSendOrderFeedbackVarsSerializer();

class _$GSendOrderFeedbackVarsSerializer
    implements StructuredSerializer<GSendOrderFeedbackVars> {
  @override
  final Iterable<Type> types = const [
    GSendOrderFeedbackVars,
    _$GSendOrderFeedbackVars
  ];
  @override
  final String wireName = 'GSendOrderFeedbackVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GSendOrderFeedbackVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'cart_id',
      serializers.serialize(object.cart_id, specifiedType: const FullType(int)),
      'mark',
      serializers.serialize(object.mark, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.options;
    if (value != null) {
      result
        ..add('options')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(_i1.GOptionInput)])));
    }
    return result;
  }

  @override
  GSendOrderFeedbackVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GSendOrderFeedbackVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cart_id':
          result.cart_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'mark':
          result.mark = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(_i1.GOptionInput)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GSendOrderFeedbackVars extends GSendOrderFeedbackVars {
  @override
  final int cart_id;
  @override
  final String? comment;
  @override
  final int mark;
  @override
  final BuiltList<_i1.GOptionInput>? options;

  factory _$GSendOrderFeedbackVars(
          [void Function(GSendOrderFeedbackVarsBuilder)? updates]) =>
      (new GSendOrderFeedbackVarsBuilder()..update(updates)).build();

  _$GSendOrderFeedbackVars._(
      {required this.cart_id, this.comment, required this.mark, this.options})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        cart_id, 'GSendOrderFeedbackVars', 'cart_id');
    BuiltValueNullFieldError.checkNotNull(
        mark, 'GSendOrderFeedbackVars', 'mark');
  }

  @override
  GSendOrderFeedbackVars rebuild(
          void Function(GSendOrderFeedbackVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GSendOrderFeedbackVarsBuilder toBuilder() =>
      new GSendOrderFeedbackVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GSendOrderFeedbackVars &&
        cart_id == other.cart_id &&
        comment == other.comment &&
        mark == other.mark &&
        options == other.options;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, cart_id.hashCode), comment.hashCode), mark.hashCode),
        options.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GSendOrderFeedbackVars')
          ..add('cart_id', cart_id)
          ..add('comment', comment)
          ..add('mark', mark)
          ..add('options', options))
        .toString();
  }
}

class GSendOrderFeedbackVarsBuilder
    implements Builder<GSendOrderFeedbackVars, GSendOrderFeedbackVarsBuilder> {
  _$GSendOrderFeedbackVars? _$v;

  int? _cart_id;
  int? get cart_id => _$this._cart_id;
  set cart_id(int? cart_id) => _$this._cart_id = cart_id;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  int? _mark;
  int? get mark => _$this._mark;
  set mark(int? mark) => _$this._mark = mark;

  ListBuilder<_i1.GOptionInput>? _options;
  ListBuilder<_i1.GOptionInput> get options =>
      _$this._options ??= new ListBuilder<_i1.GOptionInput>();
  set options(ListBuilder<_i1.GOptionInput>? options) =>
      _$this._options = options;

  GSendOrderFeedbackVarsBuilder();

  GSendOrderFeedbackVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cart_id = $v.cart_id;
      _comment = $v.comment;
      _mark = $v.mark;
      _options = $v.options?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GSendOrderFeedbackVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GSendOrderFeedbackVars;
  }

  @override
  void update(void Function(GSendOrderFeedbackVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GSendOrderFeedbackVars build() {
    _$GSendOrderFeedbackVars _$result;
    try {
      _$result = _$v ??
          new _$GSendOrderFeedbackVars._(
              cart_id: BuiltValueNullFieldError.checkNotNull(
                  cart_id, 'GSendOrderFeedbackVars', 'cart_id'),
              comment: comment,
              mark: BuiltValueNullFieldError.checkNotNull(
                  mark, 'GSendOrderFeedbackVars', 'mark'),
              options: _options?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GSendOrderFeedbackVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
