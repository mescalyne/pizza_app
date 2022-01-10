// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_recommended_products_for_cart.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetRecommendedProductsForCartVars>
    _$gGetRecommendedProductsForCartVarsSerializer =
    new _$GGetRecommendedProductsForCartVarsSerializer();

class _$GGetRecommendedProductsForCartVarsSerializer
    implements StructuredSerializer<GGetRecommendedProductsForCartVars> {
  @override
  final Iterable<Type> types = const [
    GGetRecommendedProductsForCartVars,
    _$GGetRecommendedProductsForCartVars
  ];
  @override
  final String wireName = 'GGetRecommendedProductsForCartVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRecommendedProductsForCartVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'limit',
      serializers.serialize(object.limit, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GGetRecommendedProductsForCartVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRecommendedProductsForCartVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'limit':
          result.limit = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRecommendedProductsForCartVars
    extends GGetRecommendedProductsForCartVars {
  @override
  final int limit;

  factory _$GGetRecommendedProductsForCartVars(
          [void Function(GGetRecommendedProductsForCartVarsBuilder)?
              updates]) =>
      (new GGetRecommendedProductsForCartVarsBuilder()..update(updates))
          .build();

  _$GGetRecommendedProductsForCartVars._({required this.limit}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        limit, 'GGetRecommendedProductsForCartVars', 'limit');
  }

  @override
  GGetRecommendedProductsForCartVars rebuild(
          void Function(GGetRecommendedProductsForCartVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRecommendedProductsForCartVarsBuilder toBuilder() =>
      new GGetRecommendedProductsForCartVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRecommendedProductsForCartVars && limit == other.limit;
  }

  @override
  int get hashCode {
    return $jf($jc(0, limit.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRecommendedProductsForCartVars')
          ..add('limit', limit))
        .toString();
  }
}

class GGetRecommendedProductsForCartVarsBuilder
    implements
        Builder<GGetRecommendedProductsForCartVars,
            GGetRecommendedProductsForCartVarsBuilder> {
  _$GGetRecommendedProductsForCartVars? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  GGetRecommendedProductsForCartVarsBuilder();

  GGetRecommendedProductsForCartVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRecommendedProductsForCartVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRecommendedProductsForCartVars;
  }

  @override
  void update(
      void Function(GGetRecommendedProductsForCartVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRecommendedProductsForCartVars build() {
    final _$result = _$v ??
        new _$GGetRecommendedProductsForCartVars._(
            limit: BuiltValueNullFieldError.checkNotNull(
                limit, 'GGetRecommendedProductsForCartVars', 'limit'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
