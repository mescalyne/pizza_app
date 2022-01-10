// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_cart_fragment.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCheckoutResponseFragmentReq>
    _$gCheckoutResponseFragmentReqSerializer =
    new _$GCheckoutResponseFragmentReqSerializer();

class _$GCheckoutResponseFragmentReqSerializer
    implements StructuredSerializer<GCheckoutResponseFragmentReq> {
  @override
  final Iterable<Type> types = const [
    GCheckoutResponseFragmentReq,
    _$GCheckoutResponseFragmentReq
  ];
  @override
  final String wireName = 'GCheckoutResponseFragmentReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCheckoutResponseFragmentReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GCheckoutResponseFragmentVars)),
      'document',
      serializers.serialize(object.document,
          specifiedType: const FullType(_i5.DocumentNode)),
      'idFields',
      serializers.serialize(object.idFields,
          specifiedType: const FullType(
              Map, const [const FullType(String), const FullType(dynamic)])),
    ];
    Object? value;
    value = object.fragmentName;
    if (value != null) {
      result
        ..add('fragmentName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCheckoutResponseFragmentReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCheckoutResponseFragmentReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GCheckoutResponseFragmentVars))!
              as _i3.GCheckoutResponseFragmentVars);
          break;
        case 'document':
          result.document = serializers.deserialize(value,
                  specifiedType: const FullType(_i5.DocumentNode))
              as _i5.DocumentNode;
          break;
        case 'fragmentName':
          result.fragmentName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idFields':
          result.idFields = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>;
          break;
      }
    }

    return result.build();
  }
}

class _$GCheckoutResponseFragmentReq extends GCheckoutResponseFragmentReq {
  @override
  final _i3.GCheckoutResponseFragmentVars vars;
  @override
  final _i5.DocumentNode document;
  @override
  final String? fragmentName;
  @override
  final Map<String, dynamic> idFields;

  factory _$GCheckoutResponseFragmentReq(
          [void Function(GCheckoutResponseFragmentReqBuilder)? updates]) =>
      (new GCheckoutResponseFragmentReqBuilder()..update(updates)).build();

  _$GCheckoutResponseFragmentReq._(
      {required this.vars,
      required this.document,
      this.fragmentName,
      required this.idFields})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, 'GCheckoutResponseFragmentReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        document, 'GCheckoutResponseFragmentReq', 'document');
    BuiltValueNullFieldError.checkNotNull(
        idFields, 'GCheckoutResponseFragmentReq', 'idFields');
  }

  @override
  GCheckoutResponseFragmentReq rebuild(
          void Function(GCheckoutResponseFragmentReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckoutResponseFragmentReqBuilder toBuilder() =>
      new GCheckoutResponseFragmentReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckoutResponseFragmentReq &&
        vars == other.vars &&
        document == other.document &&
        fragmentName == other.fragmentName &&
        idFields == other.idFields;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, vars.hashCode), document.hashCode),
            fragmentName.hashCode),
        idFields.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCheckoutResponseFragmentReq')
          ..add('vars', vars)
          ..add('document', document)
          ..add('fragmentName', fragmentName)
          ..add('idFields', idFields))
        .toString();
  }
}

class GCheckoutResponseFragmentReqBuilder
    implements
        Builder<GCheckoutResponseFragmentReq,
            GCheckoutResponseFragmentReqBuilder> {
  _$GCheckoutResponseFragmentReq? _$v;

  _i3.GCheckoutResponseFragmentVarsBuilder? _vars;
  _i3.GCheckoutResponseFragmentVarsBuilder get vars =>
      _$this._vars ??= new _i3.GCheckoutResponseFragmentVarsBuilder();
  set vars(_i3.GCheckoutResponseFragmentVarsBuilder? vars) =>
      _$this._vars = vars;

  _i5.DocumentNode? _document;
  _i5.DocumentNode? get document => _$this._document;
  set document(_i5.DocumentNode? document) => _$this._document = document;

  String? _fragmentName;
  String? get fragmentName => _$this._fragmentName;
  set fragmentName(String? fragmentName) => _$this._fragmentName = fragmentName;

  Map<String, dynamic>? _idFields;
  Map<String, dynamic>? get idFields => _$this._idFields;
  set idFields(Map<String, dynamic>? idFields) => _$this._idFields = idFields;

  GCheckoutResponseFragmentReqBuilder() {
    GCheckoutResponseFragmentReq._initializeBuilder(this);
  }

  GCheckoutResponseFragmentReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _document = $v.document;
      _fragmentName = $v.fragmentName;
      _idFields = $v.idFields;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCheckoutResponseFragmentReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckoutResponseFragmentReq;
  }

  @override
  void update(void Function(GCheckoutResponseFragmentReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCheckoutResponseFragmentReq build() {
    _$GCheckoutResponseFragmentReq _$result;
    try {
      _$result = _$v ??
          new _$GCheckoutResponseFragmentReq._(
              vars: vars.build(),
              document: BuiltValueNullFieldError.checkNotNull(
                  document, 'GCheckoutResponseFragmentReq', 'document'),
              fragmentName: fragmentName,
              idFields: BuiltValueNullFieldError.checkNotNull(
                  idFields, 'GCheckoutResponseFragmentReq', 'idFields'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCheckoutResponseFragmentReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
