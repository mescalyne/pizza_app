// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurant_by_location.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetRestaurantByLocationQueryVars>
    _$gGetRestaurantByLocationQueryVarsSerializer =
    new _$GGetRestaurantByLocationQueryVarsSerializer();

class _$GGetRestaurantByLocationQueryVarsSerializer
    implements StructuredSerializer<GGetRestaurantByLocationQueryVars> {
  @override
  final Iterable<Type> types = const [
    GGetRestaurantByLocationQueryVars,
    _$GGetRestaurantByLocationQueryVars
  ];
  @override
  final String wireName = 'GGetRestaurantByLocationQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRestaurantByLocationQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  GGetRestaurantByLocationQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRestaurantByLocationQueryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRestaurantByLocationQueryVars
    extends GGetRestaurantByLocationQueryVars {
  @override
  final double latitude;
  @override
  final double longitude;

  factory _$GGetRestaurantByLocationQueryVars(
          [void Function(GGetRestaurantByLocationQueryVarsBuilder)? updates]) =>
      (new GGetRestaurantByLocationQueryVarsBuilder()..update(updates)).build();

  _$GGetRestaurantByLocationQueryVars._(
      {required this.latitude, required this.longitude})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        latitude, 'GGetRestaurantByLocationQueryVars', 'latitude');
    BuiltValueNullFieldError.checkNotNull(
        longitude, 'GGetRestaurantByLocationQueryVars', 'longitude');
  }

  @override
  GGetRestaurantByLocationQueryVars rebuild(
          void Function(GGetRestaurantByLocationQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRestaurantByLocationQueryVarsBuilder toBuilder() =>
      new GGetRestaurantByLocationQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRestaurantByLocationQueryVars &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, latitude.hashCode), longitude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRestaurantByLocationQueryVars')
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class GGetRestaurantByLocationQueryVarsBuilder
    implements
        Builder<GGetRestaurantByLocationQueryVars,
            GGetRestaurantByLocationQueryVarsBuilder> {
  _$GGetRestaurantByLocationQueryVars? _$v;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  GGetRestaurantByLocationQueryVarsBuilder();

  GGetRestaurantByLocationQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRestaurantByLocationQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRestaurantByLocationQueryVars;
  }

  @override
  void update(
      void Function(GGetRestaurantByLocationQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRestaurantByLocationQueryVars build() {
    final _$result = _$v ??
        new _$GGetRestaurantByLocationQueryVars._(
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, 'GGetRestaurantByLocationQueryVars', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, 'GGetRestaurantByLocationQueryVars', 'longitude'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
