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
class _$CitiesEventTearOff {
  const _$CitiesEventTearOff();

  OnLoaded onLoaded() {
    return const OnLoaded();
  }

  OnChangeCity onChangeCity(CityDto city) {
    return OnChangeCity(
      city,
    );
  }

  OnSendChangeCity onSendChangeCity(CityDto? choosedCity) {
    return OnSendChangeCity(
      choosedCity,
    );
  }

  OnChangePlace onChangePlace(Place changePlace) {
    return OnChangePlace(
      changePlace,
    );
  }
}

/// @nodoc
const $CitiesEvent = _$CitiesEventTearOff();

/// @nodoc
mixin _$CitiesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(CityDto city) onChangeCity,
    required TResult Function(CityDto? choosedCity) onSendChangeCity,
    required TResult Function(Place changePlace) onChangePlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(CityDto city)? onChangeCity,
    TResult Function(CityDto? choosedCity)? onSendChangeCity,
    TResult Function(Place changePlace)? onChangePlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(CityDto city)? onChangeCity,
    TResult Function(CityDto? choosedCity)? onSendChangeCity,
    TResult Function(Place changePlace)? onChangePlace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnChangeCity value) onChangeCity,
    required TResult Function(OnSendChangeCity value) onSendChangeCity,
    required TResult Function(OnChangePlace value) onChangePlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnChangeCity value)? onChangeCity,
    TResult Function(OnSendChangeCity value)? onSendChangeCity,
    TResult Function(OnChangePlace value)? onChangePlace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnChangeCity value)? onChangeCity,
    TResult Function(OnSendChangeCity value)? onSendChangeCity,
    TResult Function(OnChangePlace value)? onChangePlace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesEventCopyWith<$Res> {
  factory $CitiesEventCopyWith(
          CitiesEvent value, $Res Function(CitiesEvent) then) =
      _$CitiesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CitiesEventCopyWithImpl<$Res> implements $CitiesEventCopyWith<$Res> {
  _$CitiesEventCopyWithImpl(this._value, this._then);

  final CitiesEvent _value;
  // ignore: unused_field
  final $Res Function(CitiesEvent) _then;
}

/// @nodoc
abstract class $OnLoadedCopyWith<$Res> {
  factory $OnLoadedCopyWith(OnLoaded value, $Res Function(OnLoaded) then) =
      _$OnLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadedCopyWithImpl<$Res> extends _$CitiesEventCopyWithImpl<$Res>
    implements $OnLoadedCopyWith<$Res> {
  _$OnLoadedCopyWithImpl(OnLoaded _value, $Res Function(OnLoaded) _then)
      : super(_value, (v) => _then(v as OnLoaded));

  @override
  OnLoaded get _value => super._value as OnLoaded;
}

/// @nodoc

class _$OnLoaded implements OnLoaded {
  const _$OnLoaded();

  @override
  String toString() {
    return 'CitiesEvent.onLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(CityDto city) onChangeCity,
    required TResult Function(CityDto? choosedCity) onSendChangeCity,
    required TResult Function(Place changePlace) onChangePlace,
  }) {
    return onLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(CityDto city)? onChangeCity,
    TResult Function(CityDto? choosedCity)? onSendChangeCity,
    TResult Function(Place changePlace)? onChangePlace,
  }) {
    return onLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(CityDto city)? onChangeCity,
    TResult Function(CityDto? choosedCity)? onSendChangeCity,
    TResult Function(Place changePlace)? onChangePlace,
    required TResult orElse(),
  }) {
    if (onLoaded != null) {
      return onLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnChangeCity value) onChangeCity,
    required TResult Function(OnSendChangeCity value) onSendChangeCity,
    required TResult Function(OnChangePlace value) onChangePlace,
  }) {
    return onLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnChangeCity value)? onChangeCity,
    TResult Function(OnSendChangeCity value)? onSendChangeCity,
    TResult Function(OnChangePlace value)? onChangePlace,
  }) {
    return onLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnChangeCity value)? onChangeCity,
    TResult Function(OnSendChangeCity value)? onSendChangeCity,
    TResult Function(OnChangePlace value)? onChangePlace,
    required TResult orElse(),
  }) {
    if (onLoaded != null) {
      return onLoaded(this);
    }
    return orElse();
  }
}

abstract class OnLoaded implements CitiesEvent {
  const factory OnLoaded() = _$OnLoaded;
}

/// @nodoc
abstract class $OnChangeCityCopyWith<$Res> {
  factory $OnChangeCityCopyWith(
          OnChangeCity value, $Res Function(OnChangeCity) then) =
      _$OnChangeCityCopyWithImpl<$Res>;
  $Res call({CityDto city});
}

/// @nodoc
class _$OnChangeCityCopyWithImpl<$Res> extends _$CitiesEventCopyWithImpl<$Res>
    implements $OnChangeCityCopyWith<$Res> {
  _$OnChangeCityCopyWithImpl(
      OnChangeCity _value, $Res Function(OnChangeCity) _then)
      : super(_value, (v) => _then(v as OnChangeCity));

  @override
  OnChangeCity get _value => super._value as OnChangeCity;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(OnChangeCity(
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityDto,
    ));
  }
}

/// @nodoc

class _$OnChangeCity implements OnChangeCity {
  const _$OnChangeCity(this.city);

  @override
  final CityDto city;

  @override
  String toString() {
    return 'CitiesEvent.onChangeCity(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnChangeCity &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @JsonKey(ignore: true)
  @override
  $OnChangeCityCopyWith<OnChangeCity> get copyWith =>
      _$OnChangeCityCopyWithImpl<OnChangeCity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(CityDto city) onChangeCity,
    required TResult Function(CityDto? choosedCity) onSendChangeCity,
    required TResult Function(Place changePlace) onChangePlace,
  }) {
    return onChangeCity(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(CityDto city)? onChangeCity,
    TResult Function(CityDto? choosedCity)? onSendChangeCity,
    TResult Function(Place changePlace)? onChangePlace,
  }) {
    return onChangeCity?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(CityDto city)? onChangeCity,
    TResult Function(CityDto? choosedCity)? onSendChangeCity,
    TResult Function(Place changePlace)? onChangePlace,
    required TResult orElse(),
  }) {
    if (onChangeCity != null) {
      return onChangeCity(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnChangeCity value) onChangeCity,
    required TResult Function(OnSendChangeCity value) onSendChangeCity,
    required TResult Function(OnChangePlace value) onChangePlace,
  }) {
    return onChangeCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnChangeCity value)? onChangeCity,
    TResult Function(OnSendChangeCity value)? onSendChangeCity,
    TResult Function(OnChangePlace value)? onChangePlace,
  }) {
    return onChangeCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnChangeCity value)? onChangeCity,
    TResult Function(OnSendChangeCity value)? onSendChangeCity,
    TResult Function(OnChangePlace value)? onChangePlace,
    required TResult orElse(),
  }) {
    if (onChangeCity != null) {
      return onChangeCity(this);
    }
    return orElse();
  }
}

abstract class OnChangeCity implements CitiesEvent {
  const factory OnChangeCity(CityDto city) = _$OnChangeCity;

  CityDto get city => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnChangeCityCopyWith<OnChangeCity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnSendChangeCityCopyWith<$Res> {
  factory $OnSendChangeCityCopyWith(
          OnSendChangeCity value, $Res Function(OnSendChangeCity) then) =
      _$OnSendChangeCityCopyWithImpl<$Res>;
  $Res call({CityDto? choosedCity});
}

/// @nodoc
class _$OnSendChangeCityCopyWithImpl<$Res>
    extends _$CitiesEventCopyWithImpl<$Res>
    implements $OnSendChangeCityCopyWith<$Res> {
  _$OnSendChangeCityCopyWithImpl(
      OnSendChangeCity _value, $Res Function(OnSendChangeCity) _then)
      : super(_value, (v) => _then(v as OnSendChangeCity));

  @override
  OnSendChangeCity get _value => super._value as OnSendChangeCity;

  @override
  $Res call({
    Object? choosedCity = freezed,
  }) {
    return _then(OnSendChangeCity(
      choosedCity == freezed
          ? _value.choosedCity
          : choosedCity // ignore: cast_nullable_to_non_nullable
              as CityDto?,
    ));
  }
}

/// @nodoc

class _$OnSendChangeCity implements OnSendChangeCity {
  const _$OnSendChangeCity(this.choosedCity);

  @override
  final CityDto? choosedCity;

  @override
  String toString() {
    return 'CitiesEvent.onSendChangeCity(choosedCity: $choosedCity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnSendChangeCity &&
            (identical(other.choosedCity, choosedCity) ||
                const DeepCollectionEquality()
                    .equals(other.choosedCity, choosedCity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(choosedCity);

  @JsonKey(ignore: true)
  @override
  $OnSendChangeCityCopyWith<OnSendChangeCity> get copyWith =>
      _$OnSendChangeCityCopyWithImpl<OnSendChangeCity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(CityDto city) onChangeCity,
    required TResult Function(CityDto? choosedCity) onSendChangeCity,
    required TResult Function(Place changePlace) onChangePlace,
  }) {
    return onSendChangeCity(choosedCity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(CityDto city)? onChangeCity,
    TResult Function(CityDto? choosedCity)? onSendChangeCity,
    TResult Function(Place changePlace)? onChangePlace,
  }) {
    return onSendChangeCity?.call(choosedCity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(CityDto city)? onChangeCity,
    TResult Function(CityDto? choosedCity)? onSendChangeCity,
    TResult Function(Place changePlace)? onChangePlace,
    required TResult orElse(),
  }) {
    if (onSendChangeCity != null) {
      return onSendChangeCity(choosedCity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnChangeCity value) onChangeCity,
    required TResult Function(OnSendChangeCity value) onSendChangeCity,
    required TResult Function(OnChangePlace value) onChangePlace,
  }) {
    return onSendChangeCity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnChangeCity value)? onChangeCity,
    TResult Function(OnSendChangeCity value)? onSendChangeCity,
    TResult Function(OnChangePlace value)? onChangePlace,
  }) {
    return onSendChangeCity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnChangeCity value)? onChangeCity,
    TResult Function(OnSendChangeCity value)? onSendChangeCity,
    TResult Function(OnChangePlace value)? onChangePlace,
    required TResult orElse(),
  }) {
    if (onSendChangeCity != null) {
      return onSendChangeCity(this);
    }
    return orElse();
  }
}

abstract class OnSendChangeCity implements CitiesEvent {
  const factory OnSendChangeCity(CityDto? choosedCity) = _$OnSendChangeCity;

  CityDto? get choosedCity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnSendChangeCityCopyWith<OnSendChangeCity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnChangePlaceCopyWith<$Res> {
  factory $OnChangePlaceCopyWith(
          OnChangePlace value, $Res Function(OnChangePlace) then) =
      _$OnChangePlaceCopyWithImpl<$Res>;
  $Res call({Place changePlace});
}

/// @nodoc
class _$OnChangePlaceCopyWithImpl<$Res> extends _$CitiesEventCopyWithImpl<$Res>
    implements $OnChangePlaceCopyWith<$Res> {
  _$OnChangePlaceCopyWithImpl(
      OnChangePlace _value, $Res Function(OnChangePlace) _then)
      : super(_value, (v) => _then(v as OnChangePlace));

  @override
  OnChangePlace get _value => super._value as OnChangePlace;

  @override
  $Res call({
    Object? changePlace = freezed,
  }) {
    return _then(OnChangePlace(
      changePlace == freezed
          ? _value.changePlace
          : changePlace // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc

class _$OnChangePlace implements OnChangePlace {
  const _$OnChangePlace(this.changePlace);

  @override
  final Place changePlace;

  @override
  String toString() {
    return 'CitiesEvent.onChangePlace(changePlace: $changePlace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnChangePlace &&
            (identical(other.changePlace, changePlace) ||
                const DeepCollectionEquality()
                    .equals(other.changePlace, changePlace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(changePlace);

  @JsonKey(ignore: true)
  @override
  $OnChangePlaceCopyWith<OnChangePlace> get copyWith =>
      _$OnChangePlaceCopyWithImpl<OnChangePlace>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(CityDto city) onChangeCity,
    required TResult Function(CityDto? choosedCity) onSendChangeCity,
    required TResult Function(Place changePlace) onChangePlace,
  }) {
    return onChangePlace(changePlace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(CityDto city)? onChangeCity,
    TResult Function(CityDto? choosedCity)? onSendChangeCity,
    TResult Function(Place changePlace)? onChangePlace,
  }) {
    return onChangePlace?.call(changePlace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(CityDto city)? onChangeCity,
    TResult Function(CityDto? choosedCity)? onSendChangeCity,
    TResult Function(Place changePlace)? onChangePlace,
    required TResult orElse(),
  }) {
    if (onChangePlace != null) {
      return onChangePlace(changePlace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnChangeCity value) onChangeCity,
    required TResult Function(OnSendChangeCity value) onSendChangeCity,
    required TResult Function(OnChangePlace value) onChangePlace,
  }) {
    return onChangePlace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnChangeCity value)? onChangeCity,
    TResult Function(OnSendChangeCity value)? onSendChangeCity,
    TResult Function(OnChangePlace value)? onChangePlace,
  }) {
    return onChangePlace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnChangeCity value)? onChangeCity,
    TResult Function(OnSendChangeCity value)? onSendChangeCity,
    TResult Function(OnChangePlace value)? onChangePlace,
    required TResult orElse(),
  }) {
    if (onChangePlace != null) {
      return onChangePlace(this);
    }
    return orElse();
  }
}

abstract class OnChangePlace implements CitiesEvent {
  const factory OnChangePlace(Place changePlace) = _$OnChangePlace;

  Place get changePlace => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnChangePlaceCopyWith<OnChangePlace> get copyWith =>
      throw _privateConstructorUsedError;
}
