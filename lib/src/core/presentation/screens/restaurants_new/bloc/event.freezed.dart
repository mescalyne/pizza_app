// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RestaurantNewEventTearOff {
  const _$RestaurantNewEventTearOff();

  LoadData loadData() {
    return const LoadData();
  }

  OpenRestaurantsList openRestaurantsList() {
    return const OpenRestaurantsList();
  }

  CloseRestaurantsList closeRestaurantsList() {
    return const CloseRestaurantsList();
  }

  ChooseRestaurant chooseRestaurant(Restaurant restaurant) {
    return ChooseRestaurant(
      restaurant,
    );
  }

  NearestRestaurantFound nearestRestaurantFound(
      PickUpAddressDto nearestRestaurant) {
    return NearestRestaurantFound(
      nearestRestaurant,
    );
  }

  ChangeCity changeCity() {
    return const ChangeCity();
  }

  ChangeRestaurant changeRestaurant(Restaurant restaurantId) {
    return ChangeRestaurant(
      restaurantId,
    );
  }
}

/// @nodoc
const $RestaurantNewEvent = _$RestaurantNewEventTearOff();

/// @nodoc
mixin _$RestaurantNewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() openRestaurantsList,
    required TResult Function() closeRestaurantsList,
    required TResult Function(Restaurant restaurant) chooseRestaurant,
    required TResult Function(PickUpAddressDto nearestRestaurant)
        nearestRestaurantFound,
    required TResult Function() changeCity,
    required TResult Function(Restaurant restaurantId) changeRestaurant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadData value) loadData,
    required TResult Function(OpenRestaurantsList value) openRestaurantsList,
    required TResult Function(CloseRestaurantsList value) closeRestaurantsList,
    required TResult Function(ChooseRestaurant value) chooseRestaurant,
    required TResult Function(NearestRestaurantFound value)
        nearestRestaurantFound,
    required TResult Function(ChangeCity value) changeCity,
    required TResult Function(ChangeRestaurant value) changeRestaurant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantNewEventCopyWith<$Res> {
  factory $RestaurantNewEventCopyWith(
          RestaurantNewEvent value, $Res Function(RestaurantNewEvent) then) =
      _$RestaurantNewEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestaurantNewEventCopyWithImpl<$Res>
    implements $RestaurantNewEventCopyWith<$Res> {
  _$RestaurantNewEventCopyWithImpl(this._value, this._then);

  final RestaurantNewEvent _value;
  // ignore: unused_field
  final $Res Function(RestaurantNewEvent) _then;
}

/// @nodoc
abstract class $LoadDataCopyWith<$Res> {
  factory $LoadDataCopyWith(LoadData value, $Res Function(LoadData) then) =
      _$LoadDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadDataCopyWithImpl<$Res>
    extends _$RestaurantNewEventCopyWithImpl<$Res>
    implements $LoadDataCopyWith<$Res> {
  _$LoadDataCopyWithImpl(LoadData _value, $Res Function(LoadData) _then)
      : super(_value, (v) => _then(v as LoadData));

  @override
  LoadData get _value => super._value as LoadData;
}

/// @nodoc

class _$LoadData with DiagnosticableTreeMixin implements LoadData {
  const _$LoadData();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantNewEvent.loadData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'RestaurantNewEvent.loadData'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() openRestaurantsList,
    required TResult Function() closeRestaurantsList,
    required TResult Function(Restaurant restaurant) chooseRestaurant,
    required TResult Function(PickUpAddressDto nearestRestaurant)
        nearestRestaurantFound,
    required TResult Function() changeCity,
    required TResult Function(Restaurant restaurantId) changeRestaurant,
  }) {
    return loadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
  }) {
    return loadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadData value) loadData,
    required TResult Function(OpenRestaurantsList value) openRestaurantsList,
    required TResult Function(CloseRestaurantsList value) closeRestaurantsList,
    required TResult Function(ChooseRestaurant value) chooseRestaurant,
    required TResult Function(NearestRestaurantFound value)
        nearestRestaurantFound,
    required TResult Function(ChangeCity value) changeCity,
    required TResult Function(ChangeRestaurant value) changeRestaurant,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class LoadData implements RestaurantNewEvent {
  const factory LoadData() = _$LoadData;
}

/// @nodoc
abstract class $OpenRestaurantsListCopyWith<$Res> {
  factory $OpenRestaurantsListCopyWith(
          OpenRestaurantsList value, $Res Function(OpenRestaurantsList) then) =
      _$OpenRestaurantsListCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenRestaurantsListCopyWithImpl<$Res>
    extends _$RestaurantNewEventCopyWithImpl<$Res>
    implements $OpenRestaurantsListCopyWith<$Res> {
  _$OpenRestaurantsListCopyWithImpl(
      OpenRestaurantsList _value, $Res Function(OpenRestaurantsList) _then)
      : super(_value, (v) => _then(v as OpenRestaurantsList));

  @override
  OpenRestaurantsList get _value => super._value as OpenRestaurantsList;
}

/// @nodoc

class _$OpenRestaurantsList
    with DiagnosticableTreeMixin
    implements OpenRestaurantsList {
  const _$OpenRestaurantsList();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantNewEvent.openRestaurantsList()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RestaurantNewEvent.openRestaurantsList'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OpenRestaurantsList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() openRestaurantsList,
    required TResult Function() closeRestaurantsList,
    required TResult Function(Restaurant restaurant) chooseRestaurant,
    required TResult Function(PickUpAddressDto nearestRestaurant)
        nearestRestaurantFound,
    required TResult Function() changeCity,
    required TResult Function(Restaurant restaurantId) changeRestaurant,
  }) {
    return openRestaurantsList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
  }) {
    return openRestaurantsList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
    required TResult orElse(),
  }) {
    if (openRestaurantsList != null) {
      return openRestaurantsList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadData value) loadData,
    required TResult Function(OpenRestaurantsList value) openRestaurantsList,
    required TResult Function(CloseRestaurantsList value) closeRestaurantsList,
    required TResult Function(ChooseRestaurant value) chooseRestaurant,
    required TResult Function(NearestRestaurantFound value)
        nearestRestaurantFound,
    required TResult Function(ChangeCity value) changeCity,
    required TResult Function(ChangeRestaurant value) changeRestaurant,
  }) {
    return openRestaurantsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
  }) {
    return openRestaurantsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
    required TResult orElse(),
  }) {
    if (openRestaurantsList != null) {
      return openRestaurantsList(this);
    }
    return orElse();
  }
}

abstract class OpenRestaurantsList implements RestaurantNewEvent {
  const factory OpenRestaurantsList() = _$OpenRestaurantsList;
}

/// @nodoc
abstract class $CloseRestaurantsListCopyWith<$Res> {
  factory $CloseRestaurantsListCopyWith(CloseRestaurantsList value,
          $Res Function(CloseRestaurantsList) then) =
      _$CloseRestaurantsListCopyWithImpl<$Res>;
}

/// @nodoc
class _$CloseRestaurantsListCopyWithImpl<$Res>
    extends _$RestaurantNewEventCopyWithImpl<$Res>
    implements $CloseRestaurantsListCopyWith<$Res> {
  _$CloseRestaurantsListCopyWithImpl(
      CloseRestaurantsList _value, $Res Function(CloseRestaurantsList) _then)
      : super(_value, (v) => _then(v as CloseRestaurantsList));

  @override
  CloseRestaurantsList get _value => super._value as CloseRestaurantsList;
}

/// @nodoc

class _$CloseRestaurantsList
    with DiagnosticableTreeMixin
    implements CloseRestaurantsList {
  const _$CloseRestaurantsList();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantNewEvent.closeRestaurantsList()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RestaurantNewEvent.closeRestaurantsList'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CloseRestaurantsList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() openRestaurantsList,
    required TResult Function() closeRestaurantsList,
    required TResult Function(Restaurant restaurant) chooseRestaurant,
    required TResult Function(PickUpAddressDto nearestRestaurant)
        nearestRestaurantFound,
    required TResult Function() changeCity,
    required TResult Function(Restaurant restaurantId) changeRestaurant,
  }) {
    return closeRestaurantsList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
  }) {
    return closeRestaurantsList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
    required TResult orElse(),
  }) {
    if (closeRestaurantsList != null) {
      return closeRestaurantsList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadData value) loadData,
    required TResult Function(OpenRestaurantsList value) openRestaurantsList,
    required TResult Function(CloseRestaurantsList value) closeRestaurantsList,
    required TResult Function(ChooseRestaurant value) chooseRestaurant,
    required TResult Function(NearestRestaurantFound value)
        nearestRestaurantFound,
    required TResult Function(ChangeCity value) changeCity,
    required TResult Function(ChangeRestaurant value) changeRestaurant,
  }) {
    return closeRestaurantsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
  }) {
    return closeRestaurantsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
    required TResult orElse(),
  }) {
    if (closeRestaurantsList != null) {
      return closeRestaurantsList(this);
    }
    return orElse();
  }
}

abstract class CloseRestaurantsList implements RestaurantNewEvent {
  const factory CloseRestaurantsList() = _$CloseRestaurantsList;
}

/// @nodoc
abstract class $ChooseRestaurantCopyWith<$Res> {
  factory $ChooseRestaurantCopyWith(
          ChooseRestaurant value, $Res Function(ChooseRestaurant) then) =
      _$ChooseRestaurantCopyWithImpl<$Res>;
  $Res call({Restaurant restaurant});
}

/// @nodoc
class _$ChooseRestaurantCopyWithImpl<$Res>
    extends _$RestaurantNewEventCopyWithImpl<$Res>
    implements $ChooseRestaurantCopyWith<$Res> {
  _$ChooseRestaurantCopyWithImpl(
      ChooseRestaurant _value, $Res Function(ChooseRestaurant) _then)
      : super(_value, (v) => _then(v as ChooseRestaurant));

  @override
  ChooseRestaurant get _value => super._value as ChooseRestaurant;

  @override
  $Res call({
    Object? restaurant = freezed,
  }) {
    return _then(ChooseRestaurant(
      restaurant == freezed
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ));
  }
}

/// @nodoc

class _$ChooseRestaurant
    with DiagnosticableTreeMixin
    implements ChooseRestaurant {
  const _$ChooseRestaurant(this.restaurant);

  @override
  final Restaurant restaurant;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantNewEvent.chooseRestaurant(restaurant: $restaurant)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RestaurantNewEvent.chooseRestaurant'))
      ..add(DiagnosticsProperty('restaurant', restaurant));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChooseRestaurant &&
            (identical(other.restaurant, restaurant) ||
                const DeepCollectionEquality()
                    .equals(other.restaurant, restaurant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(restaurant);

  @JsonKey(ignore: true)
  @override
  $ChooseRestaurantCopyWith<ChooseRestaurant> get copyWith =>
      _$ChooseRestaurantCopyWithImpl<ChooseRestaurant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() openRestaurantsList,
    required TResult Function() closeRestaurantsList,
    required TResult Function(Restaurant restaurant) chooseRestaurant,
    required TResult Function(PickUpAddressDto nearestRestaurant)
        nearestRestaurantFound,
    required TResult Function() changeCity,
    required TResult Function(Restaurant restaurantId) changeRestaurant,
  }) {
    return chooseRestaurant(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
  }) {
    return chooseRestaurant?.call(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
    required TResult orElse(),
  }) {
    if (chooseRestaurant != null) {
      return chooseRestaurant(restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadData value) loadData,
    required TResult Function(OpenRestaurantsList value) openRestaurantsList,
    required TResult Function(CloseRestaurantsList value) closeRestaurantsList,
    required TResult Function(ChooseRestaurant value) chooseRestaurant,
    required TResult Function(NearestRestaurantFound value)
        nearestRestaurantFound,
    required TResult Function(ChangeCity value) changeCity,
    required TResult Function(ChangeRestaurant value) changeRestaurant,
  }) {
    return chooseRestaurant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
  }) {
    return chooseRestaurant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
    required TResult orElse(),
  }) {
    if (chooseRestaurant != null) {
      return chooseRestaurant(this);
    }
    return orElse();
  }
}

abstract class ChooseRestaurant implements RestaurantNewEvent {
  const factory ChooseRestaurant(Restaurant restaurant) = _$ChooseRestaurant;

  Restaurant get restaurant => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChooseRestaurantCopyWith<ChooseRestaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearestRestaurantFoundCopyWith<$Res> {
  factory $NearestRestaurantFoundCopyWith(NearestRestaurantFound value,
          $Res Function(NearestRestaurantFound) then) =
      _$NearestRestaurantFoundCopyWithImpl<$Res>;
  $Res call({PickUpAddressDto nearestRestaurant});
}

/// @nodoc
class _$NearestRestaurantFoundCopyWithImpl<$Res>
    extends _$RestaurantNewEventCopyWithImpl<$Res>
    implements $NearestRestaurantFoundCopyWith<$Res> {
  _$NearestRestaurantFoundCopyWithImpl(NearestRestaurantFound _value,
      $Res Function(NearestRestaurantFound) _then)
      : super(_value, (v) => _then(v as NearestRestaurantFound));

  @override
  NearestRestaurantFound get _value => super._value as NearestRestaurantFound;

  @override
  $Res call({
    Object? nearestRestaurant = freezed,
  }) {
    return _then(NearestRestaurantFound(
      nearestRestaurant == freezed
          ? _value.nearestRestaurant
          : nearestRestaurant // ignore: cast_nullable_to_non_nullable
              as PickUpAddressDto,
    ));
  }
}

/// @nodoc

class _$NearestRestaurantFound
    with DiagnosticableTreeMixin
    implements NearestRestaurantFound {
  const _$NearestRestaurantFound(this.nearestRestaurant);

  @override
  final PickUpAddressDto nearestRestaurant;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantNewEvent.nearestRestaurantFound(nearestRestaurant: $nearestRestaurant)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RestaurantNewEvent.nearestRestaurantFound'))
      ..add(DiagnosticsProperty('nearestRestaurant', nearestRestaurant));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NearestRestaurantFound &&
            (identical(other.nearestRestaurant, nearestRestaurant) ||
                const DeepCollectionEquality()
                    .equals(other.nearestRestaurant, nearestRestaurant)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(nearestRestaurant);

  @JsonKey(ignore: true)
  @override
  $NearestRestaurantFoundCopyWith<NearestRestaurantFound> get copyWith =>
      _$NearestRestaurantFoundCopyWithImpl<NearestRestaurantFound>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() openRestaurantsList,
    required TResult Function() closeRestaurantsList,
    required TResult Function(Restaurant restaurant) chooseRestaurant,
    required TResult Function(PickUpAddressDto nearestRestaurant)
        nearestRestaurantFound,
    required TResult Function() changeCity,
    required TResult Function(Restaurant restaurantId) changeRestaurant,
  }) {
    return nearestRestaurantFound(nearestRestaurant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
  }) {
    return nearestRestaurantFound?.call(nearestRestaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
    required TResult orElse(),
  }) {
    if (nearestRestaurantFound != null) {
      return nearestRestaurantFound(nearestRestaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadData value) loadData,
    required TResult Function(OpenRestaurantsList value) openRestaurantsList,
    required TResult Function(CloseRestaurantsList value) closeRestaurantsList,
    required TResult Function(ChooseRestaurant value) chooseRestaurant,
    required TResult Function(NearestRestaurantFound value)
        nearestRestaurantFound,
    required TResult Function(ChangeCity value) changeCity,
    required TResult Function(ChangeRestaurant value) changeRestaurant,
  }) {
    return nearestRestaurantFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
  }) {
    return nearestRestaurantFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
    required TResult orElse(),
  }) {
    if (nearestRestaurantFound != null) {
      return nearestRestaurantFound(this);
    }
    return orElse();
  }
}

abstract class NearestRestaurantFound implements RestaurantNewEvent {
  const factory NearestRestaurantFound(PickUpAddressDto nearestRestaurant) =
      _$NearestRestaurantFound;

  PickUpAddressDto get nearestRestaurant => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NearestRestaurantFoundCopyWith<NearestRestaurantFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeCityCopyWith<$Res> {
  factory $ChangeCityCopyWith(
          ChangeCity value, $Res Function(ChangeCity) then) =
      _$ChangeCityCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeCityCopyWithImpl<$Res>
    extends _$RestaurantNewEventCopyWithImpl<$Res>
    implements $ChangeCityCopyWith<$Res> {
  _$ChangeCityCopyWithImpl(ChangeCity _value, $Res Function(ChangeCity) _then)
      : super(_value, (v) => _then(v as ChangeCity));

  @override
  ChangeCity get _value => super._value as ChangeCity;
}

/// @nodoc

class _$ChangeCity with DiagnosticableTreeMixin implements ChangeCity {
  const _$ChangeCity();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantNewEvent.changeCity()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RestaurantNewEvent.changeCity'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChangeCity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() openRestaurantsList,
    required TResult Function() closeRestaurantsList,
    required TResult Function(Restaurant restaurant) chooseRestaurant,
    required TResult Function(PickUpAddressDto nearestRestaurant)
        nearestRestaurantFound,
    required TResult Function() changeCity,
    required TResult Function(Restaurant restaurantId) changeRestaurant,
  }) {
    return changeCity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
  }) {
    return changeCity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
    required TResult orElse(),
  }) {
    if (changeCity != null) {
      return changeCity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadData value) loadData,
    required TResult Function(OpenRestaurantsList value) openRestaurantsList,
    required TResult Function(CloseRestaurantsList value) closeRestaurantsList,
    required TResult Function(ChooseRestaurant value) chooseRestaurant,
    required TResult Function(NearestRestaurantFound value)
        nearestRestaurantFound,
    required TResult Function(ChangeCity value) changeCity,
    required TResult Function(ChangeRestaurant value) changeRestaurant,
  }) {
    return changeCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
  }) {
    return changeCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
    required TResult orElse(),
  }) {
    if (changeCity != null) {
      return changeCity(this);
    }
    return orElse();
  }
}

abstract class ChangeCity implements RestaurantNewEvent {
  const factory ChangeCity() = _$ChangeCity;
}

/// @nodoc
abstract class $ChangeRestaurantCopyWith<$Res> {
  factory $ChangeRestaurantCopyWith(
          ChangeRestaurant value, $Res Function(ChangeRestaurant) then) =
      _$ChangeRestaurantCopyWithImpl<$Res>;
  $Res call({Restaurant restaurantId});
}

/// @nodoc
class _$ChangeRestaurantCopyWithImpl<$Res>
    extends _$RestaurantNewEventCopyWithImpl<$Res>
    implements $ChangeRestaurantCopyWith<$Res> {
  _$ChangeRestaurantCopyWithImpl(
      ChangeRestaurant _value, $Res Function(ChangeRestaurant) _then)
      : super(_value, (v) => _then(v as ChangeRestaurant));

  @override
  ChangeRestaurant get _value => super._value as ChangeRestaurant;

  @override
  $Res call({
    Object? restaurantId = freezed,
  }) {
    return _then(ChangeRestaurant(
      restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ));
  }
}

/// @nodoc

class _$ChangeRestaurant
    with DiagnosticableTreeMixin
    implements ChangeRestaurant {
  const _$ChangeRestaurant(this.restaurantId);

  @override
  final Restaurant restaurantId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RestaurantNewEvent.changeRestaurant(restaurantId: $restaurantId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RestaurantNewEvent.changeRestaurant'))
      ..add(DiagnosticsProperty('restaurantId', restaurantId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeRestaurant &&
            (identical(other.restaurantId, restaurantId) ||
                const DeepCollectionEquality()
                    .equals(other.restaurantId, restaurantId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(restaurantId);

  @JsonKey(ignore: true)
  @override
  $ChangeRestaurantCopyWith<ChangeRestaurant> get copyWith =>
      _$ChangeRestaurantCopyWithImpl<ChangeRestaurant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadData,
    required TResult Function() openRestaurantsList,
    required TResult Function() closeRestaurantsList,
    required TResult Function(Restaurant restaurant) chooseRestaurant,
    required TResult Function(PickUpAddressDto nearestRestaurant)
        nearestRestaurantFound,
    required TResult Function() changeCity,
    required TResult Function(Restaurant restaurantId) changeRestaurant,
  }) {
    return changeRestaurant(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
  }) {
    return changeRestaurant?.call(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadData,
    TResult Function()? openRestaurantsList,
    TResult Function()? closeRestaurantsList,
    TResult Function(Restaurant restaurant)? chooseRestaurant,
    TResult Function(PickUpAddressDto nearestRestaurant)?
        nearestRestaurantFound,
    TResult Function()? changeCity,
    TResult Function(Restaurant restaurantId)? changeRestaurant,
    required TResult orElse(),
  }) {
    if (changeRestaurant != null) {
      return changeRestaurant(restaurantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadData value) loadData,
    required TResult Function(OpenRestaurantsList value) openRestaurantsList,
    required TResult Function(CloseRestaurantsList value) closeRestaurantsList,
    required TResult Function(ChooseRestaurant value) chooseRestaurant,
    required TResult Function(NearestRestaurantFound value)
        nearestRestaurantFound,
    required TResult Function(ChangeCity value) changeCity,
    required TResult Function(ChangeRestaurant value) changeRestaurant,
  }) {
    return changeRestaurant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
  }) {
    return changeRestaurant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadData value)? loadData,
    TResult Function(OpenRestaurantsList value)? openRestaurantsList,
    TResult Function(CloseRestaurantsList value)? closeRestaurantsList,
    TResult Function(ChooseRestaurant value)? chooseRestaurant,
    TResult Function(NearestRestaurantFound value)? nearestRestaurantFound,
    TResult Function(ChangeCity value)? changeCity,
    TResult Function(ChangeRestaurant value)? changeRestaurant,
    required TResult orElse(),
  }) {
    if (changeRestaurant != null) {
      return changeRestaurant(this);
    }
    return orElse();
  }
}

abstract class ChangeRestaurant implements RestaurantNewEvent {
  const factory ChangeRestaurant(Restaurant restaurantId) = _$ChangeRestaurant;

  Restaurant get restaurantId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeRestaurantCopyWith<ChangeRestaurant> get copyWith =>
      throw _privateConstructorUsedError;
}
