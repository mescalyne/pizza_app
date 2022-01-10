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
class _$DeliveryAddressEventTearOff {
  const _$DeliveryAddressEventTearOff();

  OnLoaded onLoaded() {
    return const OnLoaded();
  }

  OnDeleteDeliveryAddress onDeleteDeliveryAddress(dynamic id) {
    return OnDeleteDeliveryAddress(
      id,
    );
  }
}

/// @nodoc
const $DeliveryAddressEvent = _$DeliveryAddressEventTearOff();

/// @nodoc
mixin _$DeliveryAddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(dynamic id) onDeleteDeliveryAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic id)? onDeleteDeliveryAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic id)? onDeleteDeliveryAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnDeleteDeliveryAddress value)
        onDeleteDeliveryAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnDeleteDeliveryAddress value)? onDeleteDeliveryAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnDeleteDeliveryAddress value)? onDeleteDeliveryAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAddressEventCopyWith<$Res> {
  factory $DeliveryAddressEventCopyWith(DeliveryAddressEvent value,
          $Res Function(DeliveryAddressEvent) then) =
      _$DeliveryAddressEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeliveryAddressEventCopyWithImpl<$Res>
    implements $DeliveryAddressEventCopyWith<$Res> {
  _$DeliveryAddressEventCopyWithImpl(this._value, this._then);

  final DeliveryAddressEvent _value;
  // ignore: unused_field
  final $Res Function(DeliveryAddressEvent) _then;
}

/// @nodoc
abstract class $OnLoadedCopyWith<$Res> {
  factory $OnLoadedCopyWith(OnLoaded value, $Res Function(OnLoaded) then) =
      _$OnLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadedCopyWithImpl<$Res>
    extends _$DeliveryAddressEventCopyWithImpl<$Res>
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
    return 'DeliveryAddressEvent.onLoaded()';
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
    required TResult Function(dynamic id) onDeleteDeliveryAddress,
  }) {
    return onLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic id)? onDeleteDeliveryAddress,
  }) {
    return onLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic id)? onDeleteDeliveryAddress,
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
    required TResult Function(OnDeleteDeliveryAddress value)
        onDeleteDeliveryAddress,
  }) {
    return onLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnDeleteDeliveryAddress value)? onDeleteDeliveryAddress,
  }) {
    return onLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnDeleteDeliveryAddress value)? onDeleteDeliveryAddress,
    required TResult orElse(),
  }) {
    if (onLoaded != null) {
      return onLoaded(this);
    }
    return orElse();
  }
}

abstract class OnLoaded implements DeliveryAddressEvent {
  const factory OnLoaded() = _$OnLoaded;
}

/// @nodoc
abstract class $OnDeleteDeliveryAddressCopyWith<$Res> {
  factory $OnDeleteDeliveryAddressCopyWith(OnDeleteDeliveryAddress value,
          $Res Function(OnDeleteDeliveryAddress) then) =
      _$OnDeleteDeliveryAddressCopyWithImpl<$Res>;
  $Res call({dynamic id});
}

/// @nodoc
class _$OnDeleteDeliveryAddressCopyWithImpl<$Res>
    extends _$DeliveryAddressEventCopyWithImpl<$Res>
    implements $OnDeleteDeliveryAddressCopyWith<$Res> {
  _$OnDeleteDeliveryAddressCopyWithImpl(OnDeleteDeliveryAddress _value,
      $Res Function(OnDeleteDeliveryAddress) _then)
      : super(_value, (v) => _then(v as OnDeleteDeliveryAddress));

  @override
  OnDeleteDeliveryAddress get _value => super._value as OnDeleteDeliveryAddress;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(OnDeleteDeliveryAddress(
      id == freezed ? _value.id : id,
    ));
  }
}

/// @nodoc

class _$OnDeleteDeliveryAddress implements OnDeleteDeliveryAddress {
  const _$OnDeleteDeliveryAddress(this.id);

  @override
  final dynamic id;

  @override
  String toString() {
    return 'DeliveryAddressEvent.onDeleteDeliveryAddress(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnDeleteDeliveryAddress &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $OnDeleteDeliveryAddressCopyWith<OnDeleteDeliveryAddress> get copyWith =>
      _$OnDeleteDeliveryAddressCopyWithImpl<OnDeleteDeliveryAddress>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function(dynamic id) onDeleteDeliveryAddress,
  }) {
    return onDeleteDeliveryAddress(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic id)? onDeleteDeliveryAddress,
  }) {
    return onDeleteDeliveryAddress?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function(dynamic id)? onDeleteDeliveryAddress,
    required TResult orElse(),
  }) {
    if (onDeleteDeliveryAddress != null) {
      return onDeleteDeliveryAddress(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(OnDeleteDeliveryAddress value)
        onDeleteDeliveryAddress,
  }) {
    return onDeleteDeliveryAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnDeleteDeliveryAddress value)? onDeleteDeliveryAddress,
  }) {
    return onDeleteDeliveryAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(OnDeleteDeliveryAddress value)? onDeleteDeliveryAddress,
    required TResult orElse(),
  }) {
    if (onDeleteDeliveryAddress != null) {
      return onDeleteDeliveryAddress(this);
    }
    return orElse();
  }
}

abstract class OnDeleteDeliveryAddress implements DeliveryAddressEvent {
  const factory OnDeleteDeliveryAddress(dynamic id) = _$OnDeleteDeliveryAddress;

  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnDeleteDeliveryAddressCopyWith<OnDeleteDeliveryAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
