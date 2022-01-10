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
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  OnBottomNavigationItemClickedEvent bottomNavigationItemClickedEvent(
      MainScreen intendedScreen) {
    return OnBottomNavigationItemClickedEvent(
      intendedScreen,
    );
  }

  OnCityPressed onCityPressed(CityDto city) {
    return OnCityPressed(
      city,
    );
  }

  OnSubmitCityPressed onSubmitCityPressed() {
    return const OnSubmitCityPressed();
  }

  LoadCities loadCities() {
    return const LoadCities();
  }

  UpdateCountItemInCart updateCountItemInCart(int count) {
    return UpdateCountItemInCart(
      count,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainScreen intendedScreen)
        bottomNavigationItemClickedEvent,
    required TResult Function(CityDto city) onCityPressed,
    required TResult Function() onSubmitCityPressed,
    required TResult Function() loadCities,
    required TResult Function(int count) updateCountItemInCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MainScreen intendedScreen)?
        bottomNavigationItemClickedEvent,
    TResult Function(CityDto city)? onCityPressed,
    TResult Function()? onSubmitCityPressed,
    TResult Function()? loadCities,
    TResult Function(int count)? updateCountItemInCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainScreen intendedScreen)?
        bottomNavigationItemClickedEvent,
    TResult Function(CityDto city)? onCityPressed,
    TResult Function()? onSubmitCityPressed,
    TResult Function()? loadCities,
    TResult Function(int count)? updateCountItemInCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBottomNavigationItemClickedEvent value)
        bottomNavigationItemClickedEvent,
    required TResult Function(OnCityPressed value) onCityPressed,
    required TResult Function(OnSubmitCityPressed value) onSubmitCityPressed,
    required TResult Function(LoadCities value) loadCities,
    required TResult Function(UpdateCountItemInCart value)
        updateCountItemInCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        bottomNavigationItemClickedEvent,
    TResult Function(OnCityPressed value)? onCityPressed,
    TResult Function(OnSubmitCityPressed value)? onSubmitCityPressed,
    TResult Function(LoadCities value)? loadCities,
    TResult Function(UpdateCountItemInCart value)? updateCountItemInCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        bottomNavigationItemClickedEvent,
    TResult Function(OnCityPressed value)? onCityPressed,
    TResult Function(OnSubmitCityPressed value)? onSubmitCityPressed,
    TResult Function(LoadCities value)? loadCities,
    TResult Function(UpdateCountItemInCart value)? updateCountItemInCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $OnBottomNavigationItemClickedEventCopyWith<$Res> {
  factory $OnBottomNavigationItemClickedEventCopyWith(
          OnBottomNavigationItemClickedEvent value,
          $Res Function(OnBottomNavigationItemClickedEvent) then) =
      _$OnBottomNavigationItemClickedEventCopyWithImpl<$Res>;
  $Res call({MainScreen intendedScreen});
}

/// @nodoc
class _$OnBottomNavigationItemClickedEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $OnBottomNavigationItemClickedEventCopyWith<$Res> {
  _$OnBottomNavigationItemClickedEventCopyWithImpl(
      OnBottomNavigationItemClickedEvent _value,
      $Res Function(OnBottomNavigationItemClickedEvent) _then)
      : super(_value, (v) => _then(v as OnBottomNavigationItemClickedEvent));

  @override
  OnBottomNavigationItemClickedEvent get _value =>
      super._value as OnBottomNavigationItemClickedEvent;

  @override
  $Res call({
    Object? intendedScreen = freezed,
  }) {
    return _then(OnBottomNavigationItemClickedEvent(
      intendedScreen == freezed
          ? _value.intendedScreen
          : intendedScreen // ignore: cast_nullable_to_non_nullable
              as MainScreen,
    ));
  }
}

/// @nodoc

class _$OnBottomNavigationItemClickedEvent
    with DiagnosticableTreeMixin
    implements OnBottomNavigationItemClickedEvent {
  const _$OnBottomNavigationItemClickedEvent(this.intendedScreen);

  @override
  final MainScreen intendedScreen;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.bottomNavigationItemClickedEvent(intendedScreen: $intendedScreen)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'HomeEvent.bottomNavigationItemClickedEvent'))
      ..add(DiagnosticsProperty('intendedScreen', intendedScreen));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnBottomNavigationItemClickedEvent &&
            (identical(other.intendedScreen, intendedScreen) ||
                const DeepCollectionEquality()
                    .equals(other.intendedScreen, intendedScreen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(intendedScreen);

  @JsonKey(ignore: true)
  @override
  $OnBottomNavigationItemClickedEventCopyWith<
          OnBottomNavigationItemClickedEvent>
      get copyWith => _$OnBottomNavigationItemClickedEventCopyWithImpl<
          OnBottomNavigationItemClickedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainScreen intendedScreen)
        bottomNavigationItemClickedEvent,
    required TResult Function(CityDto city) onCityPressed,
    required TResult Function() onSubmitCityPressed,
    required TResult Function() loadCities,
    required TResult Function(int count) updateCountItemInCart,
  }) {
    return bottomNavigationItemClickedEvent(intendedScreen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MainScreen intendedScreen)?
        bottomNavigationItemClickedEvent,
    TResult Function(CityDto city)? onCityPressed,
    TResult Function()? onSubmitCityPressed,
    TResult Function()? loadCities,
    TResult Function(int count)? updateCountItemInCart,
  }) {
    return bottomNavigationItemClickedEvent?.call(intendedScreen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainScreen intendedScreen)?
        bottomNavigationItemClickedEvent,
    TResult Function(CityDto city)? onCityPressed,
    TResult Function()? onSubmitCityPressed,
    TResult Function()? loadCities,
    TResult Function(int count)? updateCountItemInCart,
    required TResult orElse(),
  }) {
    if (bottomNavigationItemClickedEvent != null) {
      return bottomNavigationItemClickedEvent(intendedScreen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBottomNavigationItemClickedEvent value)
        bottomNavigationItemClickedEvent,
    required TResult Function(OnCityPressed value) onCityPressed,
    required TResult Function(OnSubmitCityPressed value) onSubmitCityPressed,
    required TResult Function(LoadCities value) loadCities,
    required TResult Function(UpdateCountItemInCart value)
        updateCountItemInCart,
  }) {
    return bottomNavigationItemClickedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        bottomNavigationItemClickedEvent,
    TResult Function(OnCityPressed value)? onCityPressed,
    TResult Function(OnSubmitCityPressed value)? onSubmitCityPressed,
    TResult Function(LoadCities value)? loadCities,
    TResult Function(UpdateCountItemInCart value)? updateCountItemInCart,
  }) {
    return bottomNavigationItemClickedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        bottomNavigationItemClickedEvent,
    TResult Function(OnCityPressed value)? onCityPressed,
    TResult Function(OnSubmitCityPressed value)? onSubmitCityPressed,
    TResult Function(LoadCities value)? loadCities,
    TResult Function(UpdateCountItemInCart value)? updateCountItemInCart,
    required TResult orElse(),
  }) {
    if (bottomNavigationItemClickedEvent != null) {
      return bottomNavigationItemClickedEvent(this);
    }
    return orElse();
  }
}

abstract class OnBottomNavigationItemClickedEvent implements HomeEvent {
  const factory OnBottomNavigationItemClickedEvent(MainScreen intendedScreen) =
      _$OnBottomNavigationItemClickedEvent;

  MainScreen get intendedScreen => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnBottomNavigationItemClickedEventCopyWith<
          OnBottomNavigationItemClickedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnCityPressedCopyWith<$Res> {
  factory $OnCityPressedCopyWith(
          OnCityPressed value, $Res Function(OnCityPressed) then) =
      _$OnCityPressedCopyWithImpl<$Res>;
  $Res call({CityDto city});
}

/// @nodoc
class _$OnCityPressedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $OnCityPressedCopyWith<$Res> {
  _$OnCityPressedCopyWithImpl(
      OnCityPressed _value, $Res Function(OnCityPressed) _then)
      : super(_value, (v) => _then(v as OnCityPressed));

  @override
  OnCityPressed get _value => super._value as OnCityPressed;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(OnCityPressed(
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityDto,
    ));
  }
}

/// @nodoc

class _$OnCityPressed with DiagnosticableTreeMixin implements OnCityPressed {
  const _$OnCityPressed(this.city);

  @override
  final CityDto city;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onCityPressed(city: $city)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onCityPressed'))
      ..add(DiagnosticsProperty('city', city));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnCityPressed &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  $OnCityPressedCopyWith<OnCityPressed> get copyWith =>
      _$OnCityPressedCopyWithImpl<OnCityPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainScreen intendedScreen)
        bottomNavigationItemClickedEvent,
    required TResult Function(CityDto city) onCityPressed,
    required TResult Function() onSubmitCityPressed,
    required TResult Function() loadCities,
    required TResult Function(int count) updateCountItemInCart,
  }) {
    return onCityPressed(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MainScreen intendedScreen)?
        bottomNavigationItemClickedEvent,
    TResult Function(CityDto city)? onCityPressed,
    TResult Function()? onSubmitCityPressed,
    TResult Function()? loadCities,
    TResult Function(int count)? updateCountItemInCart,
  }) {
    return onCityPressed?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainScreen intendedScreen)?
        bottomNavigationItemClickedEvent,
    TResult Function(CityDto city)? onCityPressed,
    TResult Function()? onSubmitCityPressed,
    TResult Function()? loadCities,
    TResult Function(int count)? updateCountItemInCart,
    required TResult orElse(),
  }) {
    if (onCityPressed != null) {
      return onCityPressed(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBottomNavigationItemClickedEvent value)
        bottomNavigationItemClickedEvent,
    required TResult Function(OnCityPressed value) onCityPressed,
    required TResult Function(OnSubmitCityPressed value) onSubmitCityPressed,
    required TResult Function(LoadCities value) loadCities,
    required TResult Function(UpdateCountItemInCart value)
        updateCountItemInCart,
  }) {
    return onCityPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        bottomNavigationItemClickedEvent,
    TResult Function(OnCityPressed value)? onCityPressed,
    TResult Function(OnSubmitCityPressed value)? onSubmitCityPressed,
    TResult Function(LoadCities value)? loadCities,
    TResult Function(UpdateCountItemInCart value)? updateCountItemInCart,
  }) {
    return onCityPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        bottomNavigationItemClickedEvent,
    TResult Function(OnCityPressed value)? onCityPressed,
    TResult Function(OnSubmitCityPressed value)? onSubmitCityPressed,
    TResult Function(LoadCities value)? loadCities,
    TResult Function(UpdateCountItemInCart value)? updateCountItemInCart,
    required TResult orElse(),
  }) {
    if (onCityPressed != null) {
      return onCityPressed(this);
    }
    return orElse();
  }
}

abstract class OnCityPressed implements HomeEvent {
  const factory OnCityPressed(CityDto city) = _$OnCityPressed;

  CityDto get city => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnCityPressedCopyWith<OnCityPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnSubmitCityPressedCopyWith<$Res> {
  factory $OnSubmitCityPressedCopyWith(
          OnSubmitCityPressed value, $Res Function(OnSubmitCityPressed) then) =
      _$OnSubmitCityPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnSubmitCityPressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $OnSubmitCityPressedCopyWith<$Res> {
  _$OnSubmitCityPressedCopyWithImpl(
      OnSubmitCityPressed _value, $Res Function(OnSubmitCityPressed) _then)
      : super(_value, (v) => _then(v as OnSubmitCityPressed));

  @override
  OnSubmitCityPressed get _value => super._value as OnSubmitCityPressed;
}

/// @nodoc

class _$OnSubmitCityPressed
    with DiagnosticableTreeMixin
    implements OnSubmitCityPressed {
  const _$OnSubmitCityPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onSubmitCityPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onSubmitCityPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnSubmitCityPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainScreen intendedScreen)
        bottomNavigationItemClickedEvent,
    required TResult Function(CityDto city) onCityPressed,
    required TResult Function() onSubmitCityPressed,
    required TResult Function() loadCities,
    required TResult Function(int count) updateCountItemInCart,
  }) {
    return onSubmitCityPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MainScreen intendedScreen)?
        bottomNavigationItemClickedEvent,
    TResult Function(CityDto city)? onCityPressed,
    TResult Function()? onSubmitCityPressed,
    TResult Function()? loadCities,
    TResult Function(int count)? updateCountItemInCart,
  }) {
    return onSubmitCityPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainScreen intendedScreen)?
        bottomNavigationItemClickedEvent,
    TResult Function(CityDto city)? onCityPressed,
    TResult Function()? onSubmitCityPressed,
    TResult Function()? loadCities,
    TResult Function(int count)? updateCountItemInCart,
    required TResult orElse(),
  }) {
    if (onSubmitCityPressed != null) {
      return onSubmitCityPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBottomNavigationItemClickedEvent value)
        bottomNavigationItemClickedEvent,
    required TResult Function(OnCityPressed value) onCityPressed,
    required TResult Function(OnSubmitCityPressed value) onSubmitCityPressed,
    required TResult Function(LoadCities value) loadCities,
    required TResult Function(UpdateCountItemInCart value)
        updateCountItemInCart,
  }) {
    return onSubmitCityPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        bottomNavigationItemClickedEvent,
    TResult Function(OnCityPressed value)? onCityPressed,
    TResult Function(OnSubmitCityPressed value)? onSubmitCityPressed,
    TResult Function(LoadCities value)? loadCities,
    TResult Function(UpdateCountItemInCart value)? updateCountItemInCart,
  }) {
    return onSubmitCityPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        bottomNavigationItemClickedEvent,
    TResult Function(OnCityPressed value)? onCityPressed,
    TResult Function(OnSubmitCityPressed value)? onSubmitCityPressed,
    TResult Function(LoadCities value)? loadCities,
    TResult Function(UpdateCountItemInCart value)? updateCountItemInCart,
    required TResult orElse(),
  }) {
    if (onSubmitCityPressed != null) {
      return onSubmitCityPressed(this);
    }
    return orElse();
  }
}

abstract class OnSubmitCityPressed implements HomeEvent {
  const factory OnSubmitCityPressed() = _$OnSubmitCityPressed;
}

/// @nodoc
abstract class $LoadCitiesCopyWith<$Res> {
  factory $LoadCitiesCopyWith(
          LoadCities value, $Res Function(LoadCities) then) =
      _$LoadCitiesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadCitiesCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $LoadCitiesCopyWith<$Res> {
  _$LoadCitiesCopyWithImpl(LoadCities _value, $Res Function(LoadCities) _then)
      : super(_value, (v) => _then(v as LoadCities));

  @override
  LoadCities get _value => super._value as LoadCities;
}

/// @nodoc

class _$LoadCities with DiagnosticableTreeMixin implements LoadCities {
  const _$LoadCities();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.loadCities()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeEvent.loadCities'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadCities);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainScreen intendedScreen)
        bottomNavigationItemClickedEvent,
    required TResult Function(CityDto city) onCityPressed,
    required TResult Function() onSubmitCityPressed,
    required TResult Function() loadCities,
    required TResult Function(int count) updateCountItemInCart,
  }) {
    return loadCities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MainScreen intendedScreen)?
        bottomNavigationItemClickedEvent,
    TResult Function(CityDto city)? onCityPressed,
    TResult Function()? onSubmitCityPressed,
    TResult Function()? loadCities,
    TResult Function(int count)? updateCountItemInCart,
  }) {
    return loadCities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainScreen intendedScreen)?
        bottomNavigationItemClickedEvent,
    TResult Function(CityDto city)? onCityPressed,
    TResult Function()? onSubmitCityPressed,
    TResult Function()? loadCities,
    TResult Function(int count)? updateCountItemInCart,
    required TResult orElse(),
  }) {
    if (loadCities != null) {
      return loadCities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBottomNavigationItemClickedEvent value)
        bottomNavigationItemClickedEvent,
    required TResult Function(OnCityPressed value) onCityPressed,
    required TResult Function(OnSubmitCityPressed value) onSubmitCityPressed,
    required TResult Function(LoadCities value) loadCities,
    required TResult Function(UpdateCountItemInCart value)
        updateCountItemInCart,
  }) {
    return loadCities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        bottomNavigationItemClickedEvent,
    TResult Function(OnCityPressed value)? onCityPressed,
    TResult Function(OnSubmitCityPressed value)? onSubmitCityPressed,
    TResult Function(LoadCities value)? loadCities,
    TResult Function(UpdateCountItemInCart value)? updateCountItemInCart,
  }) {
    return loadCities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        bottomNavigationItemClickedEvent,
    TResult Function(OnCityPressed value)? onCityPressed,
    TResult Function(OnSubmitCityPressed value)? onSubmitCityPressed,
    TResult Function(LoadCities value)? loadCities,
    TResult Function(UpdateCountItemInCart value)? updateCountItemInCart,
    required TResult orElse(),
  }) {
    if (loadCities != null) {
      return loadCities(this);
    }
    return orElse();
  }
}

abstract class LoadCities implements HomeEvent {
  const factory LoadCities() = _$LoadCities;
}

/// @nodoc
abstract class $UpdateCountItemInCartCopyWith<$Res> {
  factory $UpdateCountItemInCartCopyWith(UpdateCountItemInCart value,
          $Res Function(UpdateCountItemInCart) then) =
      _$UpdateCountItemInCartCopyWithImpl<$Res>;
  $Res call({int count});
}

/// @nodoc
class _$UpdateCountItemInCartCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $UpdateCountItemInCartCopyWith<$Res> {
  _$UpdateCountItemInCartCopyWithImpl(
      UpdateCountItemInCart _value, $Res Function(UpdateCountItemInCart) _then)
      : super(_value, (v) => _then(v as UpdateCountItemInCart));

  @override
  UpdateCountItemInCart get _value => super._value as UpdateCountItemInCart;

  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(UpdateCountItemInCart(
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCountItemInCart
    with DiagnosticableTreeMixin
    implements UpdateCountItemInCart {
  const _$UpdateCountItemInCart(this.count);

  @override
  final int count;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.updateCountItemInCart(count: $count)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.updateCountItemInCart'))
      ..add(DiagnosticsProperty('count', count));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateCountItemInCart &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @JsonKey(ignore: true)
  @override
  $UpdateCountItemInCartCopyWith<UpdateCountItemInCart> get copyWith =>
      _$UpdateCountItemInCartCopyWithImpl<UpdateCountItemInCart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainScreen intendedScreen)
        bottomNavigationItemClickedEvent,
    required TResult Function(CityDto city) onCityPressed,
    required TResult Function() onSubmitCityPressed,
    required TResult Function() loadCities,
    required TResult Function(int count) updateCountItemInCart,
  }) {
    return updateCountItemInCart(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(MainScreen intendedScreen)?
        bottomNavigationItemClickedEvent,
    TResult Function(CityDto city)? onCityPressed,
    TResult Function()? onSubmitCityPressed,
    TResult Function()? loadCities,
    TResult Function(int count)? updateCountItemInCart,
  }) {
    return updateCountItemInCart?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainScreen intendedScreen)?
        bottomNavigationItemClickedEvent,
    TResult Function(CityDto city)? onCityPressed,
    TResult Function()? onSubmitCityPressed,
    TResult Function()? loadCities,
    TResult Function(int count)? updateCountItemInCart,
    required TResult orElse(),
  }) {
    if (updateCountItemInCart != null) {
      return updateCountItemInCart(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnBottomNavigationItemClickedEvent value)
        bottomNavigationItemClickedEvent,
    required TResult Function(OnCityPressed value) onCityPressed,
    required TResult Function(OnSubmitCityPressed value) onSubmitCityPressed,
    required TResult Function(LoadCities value) loadCities,
    required TResult Function(UpdateCountItemInCart value)
        updateCountItemInCart,
  }) {
    return updateCountItemInCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        bottomNavigationItemClickedEvent,
    TResult Function(OnCityPressed value)? onCityPressed,
    TResult Function(OnSubmitCityPressed value)? onSubmitCityPressed,
    TResult Function(LoadCities value)? loadCities,
    TResult Function(UpdateCountItemInCart value)? updateCountItemInCart,
  }) {
    return updateCountItemInCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnBottomNavigationItemClickedEvent value)?
        bottomNavigationItemClickedEvent,
    TResult Function(OnCityPressed value)? onCityPressed,
    TResult Function(OnSubmitCityPressed value)? onSubmitCityPressed,
    TResult Function(LoadCities value)? loadCities,
    TResult Function(UpdateCountItemInCart value)? updateCountItemInCart,
    required TResult orElse(),
  }) {
    if (updateCountItemInCart != null) {
      return updateCountItemInCart(this);
    }
    return orElse();
  }
}

abstract class UpdateCountItemInCart implements HomeEvent {
  const factory UpdateCountItemInCart(int count) = _$UpdateCountItemInCart;

  int get count => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateCountItemInCartCopyWith<UpdateCountItemInCart> get copyWith =>
      throw _privateConstructorUsedError;
}
