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
class _$MoreEventTearOff {
  const _$MoreEventTearOff();

  Initialization initialization() {
    return const Initialization();
  }

  OnCellPressed cellPressed(MoreCellItem cellData) {
    return OnCellPressed(
      cellData,
    );
  }

  OnLoadWithGuest onLoadWithGuest(bool? isGuest) {
    return OnLoadWithGuest(
      isGuest,
    );
  }
}

/// @nodoc
const $MoreEvent = _$MoreEventTearOff();

/// @nodoc
mixin _$MoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function(MoreCellItem cellData) cellPressed,
    required TResult Function(bool? isGuest) onLoadWithGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(MoreCellItem cellData)? cellPressed,
    TResult Function(bool? isGuest)? onLoadWithGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(MoreCellItem cellData)? cellPressed,
    TResult Function(bool? isGuest)? onLoadWithGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(OnCellPressed value) cellPressed,
    required TResult Function(OnLoadWithGuest value) onLoadWithGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreEventCopyWith<$Res> {
  factory $MoreEventCopyWith(MoreEvent value, $Res Function(MoreEvent) then) =
      _$MoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoreEventCopyWithImpl<$Res> implements $MoreEventCopyWith<$Res> {
  _$MoreEventCopyWithImpl(this._value, this._then);

  final MoreEvent _value;
  // ignore: unused_field
  final $Res Function(MoreEvent) _then;
}

/// @nodoc
abstract class $InitializationCopyWith<$Res> {
  factory $InitializationCopyWith(
          Initialization value, $Res Function(Initialization) then) =
      _$InitializationCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializationCopyWithImpl<$Res> extends _$MoreEventCopyWithImpl<$Res>
    implements $InitializationCopyWith<$Res> {
  _$InitializationCopyWithImpl(
      Initialization _value, $Res Function(Initialization) _then)
      : super(_value, (v) => _then(v as Initialization));

  @override
  Initialization get _value => super._value as Initialization;
}

/// @nodoc

class _$Initialization implements Initialization {
  const _$Initialization();

  @override
  String toString() {
    return 'MoreEvent.initialization()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initialization);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function(MoreCellItem cellData) cellPressed,
    required TResult Function(bool? isGuest) onLoadWithGuest,
  }) {
    return initialization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(MoreCellItem cellData)? cellPressed,
    TResult Function(bool? isGuest)? onLoadWithGuest,
  }) {
    return initialization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(MoreCellItem cellData)? cellPressed,
    TResult Function(bool? isGuest)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (initialization != null) {
      return initialization();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(OnCellPressed value) cellPressed,
    required TResult Function(OnLoadWithGuest value) onLoadWithGuest,
  }) {
    return initialization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
  }) {
    return initialization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (initialization != null) {
      return initialization(this);
    }
    return orElse();
  }
}

abstract class Initialization implements MoreEvent {
  const factory Initialization() = _$Initialization;
}

/// @nodoc
abstract class $OnCellPressedCopyWith<$Res> {
  factory $OnCellPressedCopyWith(
          OnCellPressed value, $Res Function(OnCellPressed) then) =
      _$OnCellPressedCopyWithImpl<$Res>;
  $Res call({MoreCellItem cellData});
}

/// @nodoc
class _$OnCellPressedCopyWithImpl<$Res> extends _$MoreEventCopyWithImpl<$Res>
    implements $OnCellPressedCopyWith<$Res> {
  _$OnCellPressedCopyWithImpl(
      OnCellPressed _value, $Res Function(OnCellPressed) _then)
      : super(_value, (v) => _then(v as OnCellPressed));

  @override
  OnCellPressed get _value => super._value as OnCellPressed;

  @override
  $Res call({
    Object? cellData = freezed,
  }) {
    return _then(OnCellPressed(
      cellData == freezed
          ? _value.cellData
          : cellData // ignore: cast_nullable_to_non_nullable
              as MoreCellItem,
    ));
  }
}

/// @nodoc

class _$OnCellPressed implements OnCellPressed {
  const _$OnCellPressed(this.cellData);

  @override
  final MoreCellItem cellData;

  @override
  String toString() {
    return 'MoreEvent.cellPressed(cellData: $cellData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnCellPressed &&
            (identical(other.cellData, cellData) ||
                const DeepCollectionEquality()
                    .equals(other.cellData, cellData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cellData);

  @JsonKey(ignore: true)
  @override
  $OnCellPressedCopyWith<OnCellPressed> get copyWith =>
      _$OnCellPressedCopyWithImpl<OnCellPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function(MoreCellItem cellData) cellPressed,
    required TResult Function(bool? isGuest) onLoadWithGuest,
  }) {
    return cellPressed(cellData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(MoreCellItem cellData)? cellPressed,
    TResult Function(bool? isGuest)? onLoadWithGuest,
  }) {
    return cellPressed?.call(cellData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(MoreCellItem cellData)? cellPressed,
    TResult Function(bool? isGuest)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (cellPressed != null) {
      return cellPressed(cellData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(OnCellPressed value) cellPressed,
    required TResult Function(OnLoadWithGuest value) onLoadWithGuest,
  }) {
    return cellPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
  }) {
    return cellPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (cellPressed != null) {
      return cellPressed(this);
    }
    return orElse();
  }
}

abstract class OnCellPressed implements MoreEvent {
  const factory OnCellPressed(MoreCellItem cellData) = _$OnCellPressed;

  MoreCellItem get cellData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnCellPressedCopyWith<OnCellPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnLoadWithGuestCopyWith<$Res> {
  factory $OnLoadWithGuestCopyWith(
          OnLoadWithGuest value, $Res Function(OnLoadWithGuest) then) =
      _$OnLoadWithGuestCopyWithImpl<$Res>;
  $Res call({bool? isGuest});
}

/// @nodoc
class _$OnLoadWithGuestCopyWithImpl<$Res> extends _$MoreEventCopyWithImpl<$Res>
    implements $OnLoadWithGuestCopyWith<$Res> {
  _$OnLoadWithGuestCopyWithImpl(
      OnLoadWithGuest _value, $Res Function(OnLoadWithGuest) _then)
      : super(_value, (v) => _then(v as OnLoadWithGuest));

  @override
  OnLoadWithGuest get _value => super._value as OnLoadWithGuest;

  @override
  $Res call({
    Object? isGuest = freezed,
  }) {
    return _then(OnLoadWithGuest(
      isGuest == freezed
          ? _value.isGuest
          : isGuest // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$OnLoadWithGuest implements OnLoadWithGuest {
  const _$OnLoadWithGuest(this.isGuest);

  @override
  final bool? isGuest;

  @override
  String toString() {
    return 'MoreEvent.onLoadWithGuest(isGuest: $isGuest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnLoadWithGuest &&
            (identical(other.isGuest, isGuest) ||
                const DeepCollectionEquality().equals(other.isGuest, isGuest)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isGuest);

  @JsonKey(ignore: true)
  @override
  $OnLoadWithGuestCopyWith<OnLoadWithGuest> get copyWith =>
      _$OnLoadWithGuestCopyWithImpl<OnLoadWithGuest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function(MoreCellItem cellData) cellPressed,
    required TResult Function(bool? isGuest) onLoadWithGuest,
  }) {
    return onLoadWithGuest(isGuest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(MoreCellItem cellData)? cellPressed,
    TResult Function(bool? isGuest)? onLoadWithGuest,
  }) {
    return onLoadWithGuest?.call(isGuest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function(MoreCellItem cellData)? cellPressed,
    TResult Function(bool? isGuest)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (onLoadWithGuest != null) {
      return onLoadWithGuest(isGuest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(OnCellPressed value) cellPressed,
    required TResult Function(OnLoadWithGuest value) onLoadWithGuest,
  }) {
    return onLoadWithGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
  }) {
    return onLoadWithGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (onLoadWithGuest != null) {
      return onLoadWithGuest(this);
    }
    return orElse();
  }
}

abstract class OnLoadWithGuest implements MoreEvent {
  const factory OnLoadWithGuest(bool? isGuest) = _$OnLoadWithGuest;

  bool? get isGuest => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnLoadWithGuestCopyWith<OnLoadWithGuest> get copyWith =>
      throw _privateConstructorUsedError;
}
