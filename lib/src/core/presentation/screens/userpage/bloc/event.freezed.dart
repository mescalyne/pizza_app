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
class _$UserpageEventTearOff {
  const _$UserpageEventTearOff();

  OnLoaded onLoaded() {
    return const OnLoaded();
  }

  OnSaveNewInfo onSaveNewInfo(
      dynamic name, dynamic email, dynamic dateOfBirth) {
    return OnSaveNewInfo(
      name,
      email,
      dateOfBirth,
    );
  }

  OnRouteToDeliveryAddress onRouteToDeliveryAddress() {
    return const OnRouteToDeliveryAddress();
  }

  OnRouteLogOut logOut() {
    return const OnRouteLogOut();
  }

  OnRouteToOrders onRouteToOrders() {
    return const OnRouteToOrders();
  }

  Show show() {
    return const Show();
  }
}

/// @nodoc
const $UserpageEvent = _$UserpageEventTearOff();

/// @nodoc
mixin _$UserpageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)
        onSaveNewInfo,
    required TResult Function() onRouteToDeliveryAddress,
    required TResult Function() logOut,
    required TResult Function() onRouteToOrders,
    required TResult Function() show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)?
        onSaveNewInfo,
    TResult Function()? onRouteToDeliveryAddress,
    TResult Function()? logOut,
    TResult Function()? onRouteToOrders,
    TResult Function()? show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)?
        onSaveNewInfo,
    TResult Function()? onRouteToDeliveryAddress,
    TResult Function()? logOut,
    TResult Function()? onRouteToOrders,
    TResult Function()? show,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnSaveNewInfo value) onSaveNewInfo,
    required TResult Function(OnRouteToDeliveryAddress value)
        onRouteToDeliveryAddress,
    required TResult Function(OnRouteLogOut value) logOut,
    required TResult Function(OnRouteToOrders value) onRouteToOrders,
    required TResult Function(Show value) show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnSaveNewInfo value)? onSaveNewInfo,
    TResult Function(OnRouteToDeliveryAddress value)? onRouteToDeliveryAddress,
    TResult Function(OnRouteLogOut value)? logOut,
    TResult Function(OnRouteToOrders value)? onRouteToOrders,
    TResult Function(Show value)? show,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnSaveNewInfo value)? onSaveNewInfo,
    TResult Function(OnRouteToDeliveryAddress value)? onRouteToDeliveryAddress,
    TResult Function(OnRouteLogOut value)? logOut,
    TResult Function(OnRouteToOrders value)? onRouteToOrders,
    TResult Function(Show value)? show,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserpageEventCopyWith<$Res> {
  factory $UserpageEventCopyWith(
          UserpageEvent value, $Res Function(UserpageEvent) then) =
      _$UserpageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserpageEventCopyWithImpl<$Res>
    implements $UserpageEventCopyWith<$Res> {
  _$UserpageEventCopyWithImpl(this._value, this._then);

  final UserpageEvent _value;
  // ignore: unused_field
  final $Res Function(UserpageEvent) _then;
}

/// @nodoc
abstract class $OnLoadedCopyWith<$Res> {
  factory $OnLoadedCopyWith(OnLoaded value, $Res Function(OnLoaded) then) =
      _$OnLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadedCopyWithImpl<$Res> extends _$UserpageEventCopyWithImpl<$Res>
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
    return 'UserpageEvent.onLoaded()';
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
    required TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)
        onSaveNewInfo,
    required TResult Function() onRouteToDeliveryAddress,
    required TResult Function() logOut,
    required TResult Function() onRouteToOrders,
    required TResult Function() show,
  }) {
    return onLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)?
        onSaveNewInfo,
    TResult Function()? onRouteToDeliveryAddress,
    TResult Function()? logOut,
    TResult Function()? onRouteToOrders,
    TResult Function()? show,
  }) {
    return onLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)?
        onSaveNewInfo,
    TResult Function()? onRouteToDeliveryAddress,
    TResult Function()? logOut,
    TResult Function()? onRouteToOrders,
    TResult Function()? show,
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
    required TResult Function(OnSaveNewInfo value) onSaveNewInfo,
    required TResult Function(OnRouteToDeliveryAddress value)
        onRouteToDeliveryAddress,
    required TResult Function(OnRouteLogOut value) logOut,
    required TResult Function(OnRouteToOrders value) onRouteToOrders,
    required TResult Function(Show value) show,
  }) {
    return onLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnSaveNewInfo value)? onSaveNewInfo,
    TResult Function(OnRouteToDeliveryAddress value)? onRouteToDeliveryAddress,
    TResult Function(OnRouteLogOut value)? logOut,
    TResult Function(OnRouteToOrders value)? onRouteToOrders,
    TResult Function(Show value)? show,
  }) {
    return onLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnSaveNewInfo value)? onSaveNewInfo,
    TResult Function(OnRouteToDeliveryAddress value)? onRouteToDeliveryAddress,
    TResult Function(OnRouteLogOut value)? logOut,
    TResult Function(OnRouteToOrders value)? onRouteToOrders,
    TResult Function(Show value)? show,
    required TResult orElse(),
  }) {
    if (onLoaded != null) {
      return onLoaded(this);
    }
    return orElse();
  }
}

abstract class OnLoaded implements UserpageEvent {
  const factory OnLoaded() = _$OnLoaded;
}

/// @nodoc
abstract class $OnSaveNewInfoCopyWith<$Res> {
  factory $OnSaveNewInfoCopyWith(
          OnSaveNewInfo value, $Res Function(OnSaveNewInfo) then) =
      _$OnSaveNewInfoCopyWithImpl<$Res>;
  $Res call({dynamic name, dynamic email, dynamic dateOfBirth});
}

/// @nodoc
class _$OnSaveNewInfoCopyWithImpl<$Res>
    extends _$UserpageEventCopyWithImpl<$Res>
    implements $OnSaveNewInfoCopyWith<$Res> {
  _$OnSaveNewInfoCopyWithImpl(
      OnSaveNewInfo _value, $Res Function(OnSaveNewInfo) _then)
      : super(_value, (v) => _then(v as OnSaveNewInfo));

  @override
  OnSaveNewInfo get _value => super._value as OnSaveNewInfo;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? dateOfBirth = freezed,
  }) {
    return _then(OnSaveNewInfo(
      name == freezed ? _value.name : name,
      email == freezed ? _value.email : email,
      dateOfBirth == freezed ? _value.dateOfBirth : dateOfBirth,
    ));
  }
}

/// @nodoc

class _$OnSaveNewInfo implements OnSaveNewInfo {
  const _$OnSaveNewInfo(this.name, this.email, this.dateOfBirth);

  @override
  final dynamic name;
  @override
  final dynamic email;
  @override
  final dynamic dateOfBirth;

  @override
  String toString() {
    return 'UserpageEvent.onSaveNewInfo(name: $name, email: $email, dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnSaveNewInfo &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                const DeepCollectionEquality()
                    .equals(other.dateOfBirth, dateOfBirth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(dateOfBirth);

  @JsonKey(ignore: true)
  @override
  $OnSaveNewInfoCopyWith<OnSaveNewInfo> get copyWith =>
      _$OnSaveNewInfoCopyWithImpl<OnSaveNewInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)
        onSaveNewInfo,
    required TResult Function() onRouteToDeliveryAddress,
    required TResult Function() logOut,
    required TResult Function() onRouteToOrders,
    required TResult Function() show,
  }) {
    return onSaveNewInfo(name, email, dateOfBirth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)?
        onSaveNewInfo,
    TResult Function()? onRouteToDeliveryAddress,
    TResult Function()? logOut,
    TResult Function()? onRouteToOrders,
    TResult Function()? show,
  }) {
    return onSaveNewInfo?.call(name, email, dateOfBirth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)?
        onSaveNewInfo,
    TResult Function()? onRouteToDeliveryAddress,
    TResult Function()? logOut,
    TResult Function()? onRouteToOrders,
    TResult Function()? show,
    required TResult orElse(),
  }) {
    if (onSaveNewInfo != null) {
      return onSaveNewInfo(name, email, dateOfBirth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnSaveNewInfo value) onSaveNewInfo,
    required TResult Function(OnRouteToDeliveryAddress value)
        onRouteToDeliveryAddress,
    required TResult Function(OnRouteLogOut value) logOut,
    required TResult Function(OnRouteToOrders value) onRouteToOrders,
    required TResult Function(Show value) show,
  }) {
    return onSaveNewInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnSaveNewInfo value)? onSaveNewInfo,
    TResult Function(OnRouteToDeliveryAddress value)? onRouteToDeliveryAddress,
    TResult Function(OnRouteLogOut value)? logOut,
    TResult Function(OnRouteToOrders value)? onRouteToOrders,
    TResult Function(Show value)? show,
  }) {
    return onSaveNewInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnSaveNewInfo value)? onSaveNewInfo,
    TResult Function(OnRouteToDeliveryAddress value)? onRouteToDeliveryAddress,
    TResult Function(OnRouteLogOut value)? logOut,
    TResult Function(OnRouteToOrders value)? onRouteToOrders,
    TResult Function(Show value)? show,
    required TResult orElse(),
  }) {
    if (onSaveNewInfo != null) {
      return onSaveNewInfo(this);
    }
    return orElse();
  }
}

abstract class OnSaveNewInfo implements UserpageEvent {
  const factory OnSaveNewInfo(
      dynamic name, dynamic email, dynamic dateOfBirth) = _$OnSaveNewInfo;

  dynamic get name => throw _privateConstructorUsedError;
  dynamic get email => throw _privateConstructorUsedError;
  dynamic get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnSaveNewInfoCopyWith<OnSaveNewInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnRouteToDeliveryAddressCopyWith<$Res> {
  factory $OnRouteToDeliveryAddressCopyWith(OnRouteToDeliveryAddress value,
          $Res Function(OnRouteToDeliveryAddress) then) =
      _$OnRouteToDeliveryAddressCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRouteToDeliveryAddressCopyWithImpl<$Res>
    extends _$UserpageEventCopyWithImpl<$Res>
    implements $OnRouteToDeliveryAddressCopyWith<$Res> {
  _$OnRouteToDeliveryAddressCopyWithImpl(OnRouteToDeliveryAddress _value,
      $Res Function(OnRouteToDeliveryAddress) _then)
      : super(_value, (v) => _then(v as OnRouteToDeliveryAddress));

  @override
  OnRouteToDeliveryAddress get _value =>
      super._value as OnRouteToDeliveryAddress;
}

/// @nodoc

class _$OnRouteToDeliveryAddress implements OnRouteToDeliveryAddress {
  const _$OnRouteToDeliveryAddress();

  @override
  String toString() {
    return 'UserpageEvent.onRouteToDeliveryAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnRouteToDeliveryAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)
        onSaveNewInfo,
    required TResult Function() onRouteToDeliveryAddress,
    required TResult Function() logOut,
    required TResult Function() onRouteToOrders,
    required TResult Function() show,
  }) {
    return onRouteToDeliveryAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)?
        onSaveNewInfo,
    TResult Function()? onRouteToDeliveryAddress,
    TResult Function()? logOut,
    TResult Function()? onRouteToOrders,
    TResult Function()? show,
  }) {
    return onRouteToDeliveryAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)?
        onSaveNewInfo,
    TResult Function()? onRouteToDeliveryAddress,
    TResult Function()? logOut,
    TResult Function()? onRouteToOrders,
    TResult Function()? show,
    required TResult orElse(),
  }) {
    if (onRouteToDeliveryAddress != null) {
      return onRouteToDeliveryAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnSaveNewInfo value) onSaveNewInfo,
    required TResult Function(OnRouteToDeliveryAddress value)
        onRouteToDeliveryAddress,
    required TResult Function(OnRouteLogOut value) logOut,
    required TResult Function(OnRouteToOrders value) onRouteToOrders,
    required TResult Function(Show value) show,
  }) {
    return onRouteToDeliveryAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnSaveNewInfo value)? onSaveNewInfo,
    TResult Function(OnRouteToDeliveryAddress value)? onRouteToDeliveryAddress,
    TResult Function(OnRouteLogOut value)? logOut,
    TResult Function(OnRouteToOrders value)? onRouteToOrders,
    TResult Function(Show value)? show,
  }) {
    return onRouteToDeliveryAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnSaveNewInfo value)? onSaveNewInfo,
    TResult Function(OnRouteToDeliveryAddress value)? onRouteToDeliveryAddress,
    TResult Function(OnRouteLogOut value)? logOut,
    TResult Function(OnRouteToOrders value)? onRouteToOrders,
    TResult Function(Show value)? show,
    required TResult orElse(),
  }) {
    if (onRouteToDeliveryAddress != null) {
      return onRouteToDeliveryAddress(this);
    }
    return orElse();
  }
}

abstract class OnRouteToDeliveryAddress implements UserpageEvent {
  const factory OnRouteToDeliveryAddress() = _$OnRouteToDeliveryAddress;
}

/// @nodoc
abstract class $OnRouteLogOutCopyWith<$Res> {
  factory $OnRouteLogOutCopyWith(
          OnRouteLogOut value, $Res Function(OnRouteLogOut) then) =
      _$OnRouteLogOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRouteLogOutCopyWithImpl<$Res>
    extends _$UserpageEventCopyWithImpl<$Res>
    implements $OnRouteLogOutCopyWith<$Res> {
  _$OnRouteLogOutCopyWithImpl(
      OnRouteLogOut _value, $Res Function(OnRouteLogOut) _then)
      : super(_value, (v) => _then(v as OnRouteLogOut));

  @override
  OnRouteLogOut get _value => super._value as OnRouteLogOut;
}

/// @nodoc

class _$OnRouteLogOut implements OnRouteLogOut {
  const _$OnRouteLogOut();

  @override
  String toString() {
    return 'UserpageEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnRouteLogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)
        onSaveNewInfo,
    required TResult Function() onRouteToDeliveryAddress,
    required TResult Function() logOut,
    required TResult Function() onRouteToOrders,
    required TResult Function() show,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)?
        onSaveNewInfo,
    TResult Function()? onRouteToDeliveryAddress,
    TResult Function()? logOut,
    TResult Function()? onRouteToOrders,
    TResult Function()? show,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)?
        onSaveNewInfo,
    TResult Function()? onRouteToDeliveryAddress,
    TResult Function()? logOut,
    TResult Function()? onRouteToOrders,
    TResult Function()? show,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnSaveNewInfo value) onSaveNewInfo,
    required TResult Function(OnRouteToDeliveryAddress value)
        onRouteToDeliveryAddress,
    required TResult Function(OnRouteLogOut value) logOut,
    required TResult Function(OnRouteToOrders value) onRouteToOrders,
    required TResult Function(Show value) show,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnSaveNewInfo value)? onSaveNewInfo,
    TResult Function(OnRouteToDeliveryAddress value)? onRouteToDeliveryAddress,
    TResult Function(OnRouteLogOut value)? logOut,
    TResult Function(OnRouteToOrders value)? onRouteToOrders,
    TResult Function(Show value)? show,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnSaveNewInfo value)? onSaveNewInfo,
    TResult Function(OnRouteToDeliveryAddress value)? onRouteToDeliveryAddress,
    TResult Function(OnRouteLogOut value)? logOut,
    TResult Function(OnRouteToOrders value)? onRouteToOrders,
    TResult Function(Show value)? show,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class OnRouteLogOut implements UserpageEvent {
  const factory OnRouteLogOut() = _$OnRouteLogOut;
}

/// @nodoc
abstract class $OnRouteToOrdersCopyWith<$Res> {
  factory $OnRouteToOrdersCopyWith(
          OnRouteToOrders value, $Res Function(OnRouteToOrders) then) =
      _$OnRouteToOrdersCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRouteToOrdersCopyWithImpl<$Res>
    extends _$UserpageEventCopyWithImpl<$Res>
    implements $OnRouteToOrdersCopyWith<$Res> {
  _$OnRouteToOrdersCopyWithImpl(
      OnRouteToOrders _value, $Res Function(OnRouteToOrders) _then)
      : super(_value, (v) => _then(v as OnRouteToOrders));

  @override
  OnRouteToOrders get _value => super._value as OnRouteToOrders;
}

/// @nodoc

class _$OnRouteToOrders implements OnRouteToOrders {
  const _$OnRouteToOrders();

  @override
  String toString() {
    return 'UserpageEvent.onRouteToOrders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnRouteToOrders);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)
        onSaveNewInfo,
    required TResult Function() onRouteToDeliveryAddress,
    required TResult Function() logOut,
    required TResult Function() onRouteToOrders,
    required TResult Function() show,
  }) {
    return onRouteToOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)?
        onSaveNewInfo,
    TResult Function()? onRouteToDeliveryAddress,
    TResult Function()? logOut,
    TResult Function()? onRouteToOrders,
    TResult Function()? show,
  }) {
    return onRouteToOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)?
        onSaveNewInfo,
    TResult Function()? onRouteToDeliveryAddress,
    TResult Function()? logOut,
    TResult Function()? onRouteToOrders,
    TResult Function()? show,
    required TResult orElse(),
  }) {
    if (onRouteToOrders != null) {
      return onRouteToOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnSaveNewInfo value) onSaveNewInfo,
    required TResult Function(OnRouteToDeliveryAddress value)
        onRouteToDeliveryAddress,
    required TResult Function(OnRouteLogOut value) logOut,
    required TResult Function(OnRouteToOrders value) onRouteToOrders,
    required TResult Function(Show value) show,
  }) {
    return onRouteToOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnSaveNewInfo value)? onSaveNewInfo,
    TResult Function(OnRouteToDeliveryAddress value)? onRouteToDeliveryAddress,
    TResult Function(OnRouteLogOut value)? logOut,
    TResult Function(OnRouteToOrders value)? onRouteToOrders,
    TResult Function(Show value)? show,
  }) {
    return onRouteToOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnSaveNewInfo value)? onSaveNewInfo,
    TResult Function(OnRouteToDeliveryAddress value)? onRouteToDeliveryAddress,
    TResult Function(OnRouteLogOut value)? logOut,
    TResult Function(OnRouteToOrders value)? onRouteToOrders,
    TResult Function(Show value)? show,
    required TResult orElse(),
  }) {
    if (onRouteToOrders != null) {
      return onRouteToOrders(this);
    }
    return orElse();
  }
}

abstract class OnRouteToOrders implements UserpageEvent {
  const factory OnRouteToOrders() = _$OnRouteToOrders;
}

/// @nodoc
abstract class $ShowCopyWith<$Res> {
  factory $ShowCopyWith(Show value, $Res Function(Show) then) =
      _$ShowCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowCopyWithImpl<$Res> extends _$UserpageEventCopyWithImpl<$Res>
    implements $ShowCopyWith<$Res> {
  _$ShowCopyWithImpl(Show _value, $Res Function(Show) _then)
      : super(_value, (v) => _then(v as Show));

  @override
  Show get _value => super._value as Show;
}

/// @nodoc

class _$Show implements Show {
  const _$Show();

  @override
  String toString() {
    return 'UserpageEvent.show()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Show);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)
        onSaveNewInfo,
    required TResult Function() onRouteToDeliveryAddress,
    required TResult Function() logOut,
    required TResult Function() onRouteToOrders,
    required TResult Function() show,
  }) {
    return show();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)?
        onSaveNewInfo,
    TResult Function()? onRouteToDeliveryAddress,
    TResult Function()? logOut,
    TResult Function()? onRouteToOrders,
    TResult Function()? show,
  }) {
    return show?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic name, dynamic email, dynamic dateOfBirth)?
        onSaveNewInfo,
    TResult Function()? onRouteToDeliveryAddress,
    TResult Function()? logOut,
    TResult Function()? onRouteToOrders,
    TResult Function()? show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnSaveNewInfo value) onSaveNewInfo,
    required TResult Function(OnRouteToDeliveryAddress value)
        onRouteToDeliveryAddress,
    required TResult Function(OnRouteLogOut value) logOut,
    required TResult Function(OnRouteToOrders value) onRouteToOrders,
    required TResult Function(Show value) show,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnSaveNewInfo value)? onSaveNewInfo,
    TResult Function(OnRouteToDeliveryAddress value)? onRouteToDeliveryAddress,
    TResult Function(OnRouteLogOut value)? logOut,
    TResult Function(OnRouteToOrders value)? onRouteToOrders,
    TResult Function(Show value)? show,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnSaveNewInfo value)? onSaveNewInfo,
    TResult Function(OnRouteToDeliveryAddress value)? onRouteToDeliveryAddress,
    TResult Function(OnRouteLogOut value)? logOut,
    TResult Function(OnRouteToOrders value)? onRouteToOrders,
    TResult Function(Show value)? show,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class Show implements UserpageEvent {
  const factory Show() = _$Show;
}
