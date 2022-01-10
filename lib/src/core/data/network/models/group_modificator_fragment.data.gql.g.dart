// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_modificator_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGroupModificatorFragmentData>
    _$gGroupModificatorFragmentDataSerializer =
    new _$GGroupModificatorFragmentDataSerializer();
Serializer<GGroupModificatorFragmentData_childModifiers>
    _$gGroupModificatorFragmentDataChildModifiersSerializer =
    new _$GGroupModificatorFragmentData_childModifiersSerializer();

class _$GGroupModificatorFragmentDataSerializer
    implements StructuredSerializer<GGroupModificatorFragmentData> {
  @override
  final Iterable<Type> types = const [
    GGroupModificatorFragmentData,
    _$GGroupModificatorFragmentData
  ];
  @override
  final String wireName = 'GGroupModificatorFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupModificatorFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'modifierId',
      serializers.serialize(object.modifierId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.maxAmount;
    if (value != null) {
      result
        ..add('maxAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minAmount;
    if (value != null) {
      result
        ..add('minAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.required;
    if (value != null) {
      result
        ..add('required')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.childModifiers;
    if (value != null) {
      result
        ..add('childModifiers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGroupModificatorFragmentData_childModifiers)
            ])));
    }
    value = object.childModifiersHaveMinMaxRestrictions;
    if (value != null) {
      result
        ..add('childModifiersHaveMinMaxRestrictions')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GGroupModificatorFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupModificatorFragmentDataBuilder();

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
        case 'maxAmount':
          result.maxAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minAmount':
          result.minAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'modifierId':
          result.modifierId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'required':
          result.required = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'childModifiers':
          result.childModifiers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGroupModificatorFragmentData_childModifiers)
              ]))! as BuiltList<Object?>);
          break;
        case 'childModifiersHaveMinMaxRestrictions':
          result.childModifiersHaveMinMaxRestrictions = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupModificatorFragmentData_childModifiersSerializer
    implements
        StructuredSerializer<GGroupModificatorFragmentData_childModifiers> {
  @override
  final Iterable<Type> types = const [
    GGroupModificatorFragmentData_childModifiers,
    _$GGroupModificatorFragmentData_childModifiers
  ];
  @override
  final String wireName = 'GGroupModificatorFragmentData_childModifiers';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGroupModificatorFragmentData_childModifiers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'modifierId',
      serializers.serialize(object.modifierId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.maxAmount;
    if (value != null) {
      result
        ..add('maxAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minAmount;
    if (value != null) {
      result
        ..add('minAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.required;
    if (value != null) {
      result
        ..add('required')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.defaultAmount;
    if (value != null) {
      result
        ..add('defaultAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hideIfDefaultAmount;
    if (value != null) {
      result
        ..add('hideIfDefaultAmount')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GGroupModificatorFragmentData_childModifiers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupModificatorFragmentData_childModifiersBuilder();

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
        case 'maxAmount':
          result.maxAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minAmount':
          result.minAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'modifierId':
          result.modifierId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'required':
          result.required = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'defaultAmount':
          result.defaultAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hideIfDefaultAmount':
          result.hideIfDefaultAmount = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupModificatorFragmentData extends GGroupModificatorFragmentData {
  @override
  final String G__typename;
  @override
  final int? maxAmount;
  @override
  final int? minAmount;
  @override
  final String modifierId;
  @override
  final bool? required;
  @override
  final BuiltList<GGroupModificatorFragmentData_childModifiers>? childModifiers;
  @override
  final bool? childModifiersHaveMinMaxRestrictions;

  factory _$GGroupModificatorFragmentData(
          [void Function(GGroupModificatorFragmentDataBuilder)? updates]) =>
      (new GGroupModificatorFragmentDataBuilder()..update(updates)).build();

  _$GGroupModificatorFragmentData._(
      {required this.G__typename,
      this.maxAmount,
      this.minAmount,
      required this.modifierId,
      this.required,
      this.childModifiers,
      this.childModifiersHaveMinMaxRestrictions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGroupModificatorFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        modifierId, 'GGroupModificatorFragmentData', 'modifierId');
  }

  @override
  GGroupModificatorFragmentData rebuild(
          void Function(GGroupModificatorFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupModificatorFragmentDataBuilder toBuilder() =>
      new GGroupModificatorFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupModificatorFragmentData &&
        G__typename == other.G__typename &&
        maxAmount == other.maxAmount &&
        minAmount == other.minAmount &&
        modifierId == other.modifierId &&
        required == other.required &&
        childModifiers == other.childModifiers &&
        childModifiersHaveMinMaxRestrictions ==
            other.childModifiersHaveMinMaxRestrictions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), maxAmount.hashCode),
                        minAmount.hashCode),
                    modifierId.hashCode),
                required.hashCode),
            childModifiers.hashCode),
        childModifiersHaveMinMaxRestrictions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGroupModificatorFragmentData')
          ..add('G__typename', G__typename)
          ..add('maxAmount', maxAmount)
          ..add('minAmount', minAmount)
          ..add('modifierId', modifierId)
          ..add('required', required)
          ..add('childModifiers', childModifiers)
          ..add('childModifiersHaveMinMaxRestrictions',
              childModifiersHaveMinMaxRestrictions))
        .toString();
  }
}

class GGroupModificatorFragmentDataBuilder
    implements
        Builder<GGroupModificatorFragmentData,
            GGroupModificatorFragmentDataBuilder> {
  _$GGroupModificatorFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _maxAmount;
  int? get maxAmount => _$this._maxAmount;
  set maxAmount(int? maxAmount) => _$this._maxAmount = maxAmount;

  int? _minAmount;
  int? get minAmount => _$this._minAmount;
  set minAmount(int? minAmount) => _$this._minAmount = minAmount;

  String? _modifierId;
  String? get modifierId => _$this._modifierId;
  set modifierId(String? modifierId) => _$this._modifierId = modifierId;

  bool? _required;
  bool? get required => _$this._required;
  set required(bool? required) => _$this._required = required;

  ListBuilder<GGroupModificatorFragmentData_childModifiers>? _childModifiers;
  ListBuilder<GGroupModificatorFragmentData_childModifiers>
      get childModifiers => _$this._childModifiers ??=
          new ListBuilder<GGroupModificatorFragmentData_childModifiers>();
  set childModifiers(
          ListBuilder<GGroupModificatorFragmentData_childModifiers>?
              childModifiers) =>
      _$this._childModifiers = childModifiers;

  bool? _childModifiersHaveMinMaxRestrictions;
  bool? get childModifiersHaveMinMaxRestrictions =>
      _$this._childModifiersHaveMinMaxRestrictions;
  set childModifiersHaveMinMaxRestrictions(
          bool? childModifiersHaveMinMaxRestrictions) =>
      _$this._childModifiersHaveMinMaxRestrictions =
          childModifiersHaveMinMaxRestrictions;

  GGroupModificatorFragmentDataBuilder() {
    GGroupModificatorFragmentData._initializeBuilder(this);
  }

  GGroupModificatorFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _maxAmount = $v.maxAmount;
      _minAmount = $v.minAmount;
      _modifierId = $v.modifierId;
      _required = $v.required;
      _childModifiers = $v.childModifiers?.toBuilder();
      _childModifiersHaveMinMaxRestrictions =
          $v.childModifiersHaveMinMaxRestrictions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupModificatorFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupModificatorFragmentData;
  }

  @override
  void update(void Function(GGroupModificatorFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGroupModificatorFragmentData build() {
    _$GGroupModificatorFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GGroupModificatorFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGroupModificatorFragmentData', 'G__typename'),
              maxAmount: maxAmount,
              minAmount: minAmount,
              modifierId: BuiltValueNullFieldError.checkNotNull(
                  modifierId, 'GGroupModificatorFragmentData', 'modifierId'),
              required: required,
              childModifiers: _childModifiers?.build(),
              childModifiersHaveMinMaxRestrictions:
                  childModifiersHaveMinMaxRestrictions);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'childModifiers';
        _childModifiers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGroupModificatorFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGroupModificatorFragmentData_childModifiers
    extends GGroupModificatorFragmentData_childModifiers {
  @override
  final String G__typename;
  @override
  final int? maxAmount;
  @override
  final int? minAmount;
  @override
  final String modifierId;
  @override
  final bool? required;
  @override
  final int? defaultAmount;
  @override
  final bool? hideIfDefaultAmount;

  factory _$GGroupModificatorFragmentData_childModifiers(
          [void Function(GGroupModificatorFragmentData_childModifiersBuilder)?
              updates]) =>
      (new GGroupModificatorFragmentData_childModifiersBuilder()
            ..update(updates))
          .build();

  _$GGroupModificatorFragmentData_childModifiers._(
      {required this.G__typename,
      this.maxAmount,
      this.minAmount,
      required this.modifierId,
      this.required,
      this.defaultAmount,
      this.hideIfDefaultAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGroupModificatorFragmentData_childModifiers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(modifierId,
        'GGroupModificatorFragmentData_childModifiers', 'modifierId');
  }

  @override
  GGroupModificatorFragmentData_childModifiers rebuild(
          void Function(GGroupModificatorFragmentData_childModifiersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupModificatorFragmentData_childModifiersBuilder toBuilder() =>
      new GGroupModificatorFragmentData_childModifiersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupModificatorFragmentData_childModifiers &&
        G__typename == other.G__typename &&
        maxAmount == other.maxAmount &&
        minAmount == other.minAmount &&
        modifierId == other.modifierId &&
        required == other.required &&
        defaultAmount == other.defaultAmount &&
        hideIfDefaultAmount == other.hideIfDefaultAmount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), maxAmount.hashCode),
                        minAmount.hashCode),
                    modifierId.hashCode),
                required.hashCode),
            defaultAmount.hashCode),
        hideIfDefaultAmount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGroupModificatorFragmentData_childModifiers')
          ..add('G__typename', G__typename)
          ..add('maxAmount', maxAmount)
          ..add('minAmount', minAmount)
          ..add('modifierId', modifierId)
          ..add('required', required)
          ..add('defaultAmount', defaultAmount)
          ..add('hideIfDefaultAmount', hideIfDefaultAmount))
        .toString();
  }
}

class GGroupModificatorFragmentData_childModifiersBuilder
    implements
        Builder<GGroupModificatorFragmentData_childModifiers,
            GGroupModificatorFragmentData_childModifiersBuilder> {
  _$GGroupModificatorFragmentData_childModifiers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _maxAmount;
  int? get maxAmount => _$this._maxAmount;
  set maxAmount(int? maxAmount) => _$this._maxAmount = maxAmount;

  int? _minAmount;
  int? get minAmount => _$this._minAmount;
  set minAmount(int? minAmount) => _$this._minAmount = minAmount;

  String? _modifierId;
  String? get modifierId => _$this._modifierId;
  set modifierId(String? modifierId) => _$this._modifierId = modifierId;

  bool? _required;
  bool? get required => _$this._required;
  set required(bool? required) => _$this._required = required;

  int? _defaultAmount;
  int? get defaultAmount => _$this._defaultAmount;
  set defaultAmount(int? defaultAmount) =>
      _$this._defaultAmount = defaultAmount;

  bool? _hideIfDefaultAmount;
  bool? get hideIfDefaultAmount => _$this._hideIfDefaultAmount;
  set hideIfDefaultAmount(bool? hideIfDefaultAmount) =>
      _$this._hideIfDefaultAmount = hideIfDefaultAmount;

  GGroupModificatorFragmentData_childModifiersBuilder() {
    GGroupModificatorFragmentData_childModifiers._initializeBuilder(this);
  }

  GGroupModificatorFragmentData_childModifiersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _maxAmount = $v.maxAmount;
      _minAmount = $v.minAmount;
      _modifierId = $v.modifierId;
      _required = $v.required;
      _defaultAmount = $v.defaultAmount;
      _hideIfDefaultAmount = $v.hideIfDefaultAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupModificatorFragmentData_childModifiers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupModificatorFragmentData_childModifiers;
  }

  @override
  void update(
      void Function(GGroupModificatorFragmentData_childModifiersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGroupModificatorFragmentData_childModifiers build() {
    final _$result = _$v ??
        new _$GGroupModificatorFragmentData_childModifiers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGroupModificatorFragmentData_childModifiers', 'G__typename'),
            maxAmount: maxAmount,
            minAmount: minAmount,
            modifierId: BuiltValueNullFieldError.checkNotNull(modifierId,
                'GGroupModificatorFragmentData_childModifiers', 'modifierId'),
            required: required,
            defaultAmount: defaultAmount,
            hideIfDefaultAmount: hideIfDefaultAmount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
