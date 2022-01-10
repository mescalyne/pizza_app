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
class _$MoreDetailEventTearOff {
  const _$MoreDetailEventTearOff();

  Initialization initialization() {
    return const Initialization();
  }

  ErrorLoading errorLoading() {
    return const ErrorLoading();
  }

  OnCellPressed cellPressed(ListItem cellData) {
    return OnCellPressed(
      cellData,
    );
  }

  OnButtonPressed buttonPressed() {
    return const OnButtonPressed();
  }
}

/// @nodoc
const $MoreDetailEvent = _$MoreDetailEventTearOff();

/// @nodoc
mixin _$MoreDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() errorLoading,
    required TResult Function(ListItem cellData) cellPressed,
    required TResult Function() buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(ListItem cellData)? cellPressed,
    TResult Function()? buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(ListItem cellData)? cellPressed,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnCellPressed value) cellPressed,
    required TResult Function(OnButtonPressed value) buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnButtonPressed value)? buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoreDetailEventCopyWith<$Res> {
  factory $MoreDetailEventCopyWith(
          MoreDetailEvent value, $Res Function(MoreDetailEvent) then) =
      _$MoreDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoreDetailEventCopyWithImpl<$Res>
    implements $MoreDetailEventCopyWith<$Res> {
  _$MoreDetailEventCopyWithImpl(this._value, this._then);

  final MoreDetailEvent _value;
  // ignore: unused_field
  final $Res Function(MoreDetailEvent) _then;
}

/// @nodoc
abstract class $InitializationCopyWith<$Res> {
  factory $InitializationCopyWith(
          Initialization value, $Res Function(Initialization) then) =
      _$InitializationCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializationCopyWithImpl<$Res>
    extends _$MoreDetailEventCopyWithImpl<$Res>
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
    return 'MoreDetailEvent.initialization()';
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
    required TResult Function() errorLoading,
    required TResult Function(ListItem cellData) cellPressed,
    required TResult Function() buttonPressed,
  }) {
    return initialization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(ListItem cellData)? cellPressed,
    TResult Function()? buttonPressed,
  }) {
    return initialization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(ListItem cellData)? cellPressed,
    TResult Function()? buttonPressed,
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
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnCellPressed value) cellPressed,
    required TResult Function(OnButtonPressed value) buttonPressed,
  }) {
    return initialization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnButtonPressed value)? buttonPressed,
  }) {
    return initialization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (initialization != null) {
      return initialization(this);
    }
    return orElse();
  }
}

abstract class Initialization implements MoreDetailEvent {
  const factory Initialization() = _$Initialization;
}

/// @nodoc
abstract class $ErrorLoadingCopyWith<$Res> {
  factory $ErrorLoadingCopyWith(
          ErrorLoading value, $Res Function(ErrorLoading) then) =
      _$ErrorLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorLoadingCopyWithImpl<$Res>
    extends _$MoreDetailEventCopyWithImpl<$Res>
    implements $ErrorLoadingCopyWith<$Res> {
  _$ErrorLoadingCopyWithImpl(
      ErrorLoading _value, $Res Function(ErrorLoading) _then)
      : super(_value, (v) => _then(v as ErrorLoading));

  @override
  ErrorLoading get _value => super._value as ErrorLoading;
}

/// @nodoc

class _$ErrorLoading implements ErrorLoading {
  const _$ErrorLoading();

  @override
  String toString() {
    return 'MoreDetailEvent.errorLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ErrorLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() errorLoading,
    required TResult Function(ListItem cellData) cellPressed,
    required TResult Function() buttonPressed,
  }) {
    return errorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(ListItem cellData)? cellPressed,
    TResult Function()? buttonPressed,
  }) {
    return errorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(ListItem cellData)? cellPressed,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnCellPressed value) cellPressed,
    required TResult Function(OnButtonPressed value) buttonPressed,
  }) {
    return errorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnButtonPressed value)? buttonPressed,
  }) {
    return errorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading(this);
    }
    return orElse();
  }
}

abstract class ErrorLoading implements MoreDetailEvent {
  const factory ErrorLoading() = _$ErrorLoading;
}

/// @nodoc
abstract class $OnCellPressedCopyWith<$Res> {
  factory $OnCellPressedCopyWith(
          OnCellPressed value, $Res Function(OnCellPressed) then) =
      _$OnCellPressedCopyWithImpl<$Res>;
  $Res call({ListItem cellData});
}

/// @nodoc
class _$OnCellPressedCopyWithImpl<$Res>
    extends _$MoreDetailEventCopyWithImpl<$Res>
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
              as ListItem,
    ));
  }
}

/// @nodoc

class _$OnCellPressed implements OnCellPressed {
  const _$OnCellPressed(this.cellData);

  @override
  final ListItem cellData;

  @override
  String toString() {
    return 'MoreDetailEvent.cellPressed(cellData: $cellData)';
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
    required TResult Function() errorLoading,
    required TResult Function(ListItem cellData) cellPressed,
    required TResult Function() buttonPressed,
  }) {
    return cellPressed(cellData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(ListItem cellData)? cellPressed,
    TResult Function()? buttonPressed,
  }) {
    return cellPressed?.call(cellData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(ListItem cellData)? cellPressed,
    TResult Function()? buttonPressed,
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
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnCellPressed value) cellPressed,
    required TResult Function(OnButtonPressed value) buttonPressed,
  }) {
    return cellPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnButtonPressed value)? buttonPressed,
  }) {
    return cellPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (cellPressed != null) {
      return cellPressed(this);
    }
    return orElse();
  }
}

abstract class OnCellPressed implements MoreDetailEvent {
  const factory OnCellPressed(ListItem cellData) = _$OnCellPressed;

  ListItem get cellData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnCellPressedCopyWith<OnCellPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnButtonPressedCopyWith<$Res> {
  factory $OnButtonPressedCopyWith(
          OnButtonPressed value, $Res Function(OnButtonPressed) then) =
      _$OnButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnButtonPressedCopyWithImpl<$Res>
    extends _$MoreDetailEventCopyWithImpl<$Res>
    implements $OnButtonPressedCopyWith<$Res> {
  _$OnButtonPressedCopyWithImpl(
      OnButtonPressed _value, $Res Function(OnButtonPressed) _then)
      : super(_value, (v) => _then(v as OnButtonPressed));

  @override
  OnButtonPressed get _value => super._value as OnButtonPressed;
}

/// @nodoc

class _$OnButtonPressed implements OnButtonPressed {
  const _$OnButtonPressed();

  @override
  String toString() {
    return 'MoreDetailEvent.buttonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() errorLoading,
    required TResult Function(ListItem cellData) cellPressed,
    required TResult Function() buttonPressed,
  }) {
    return buttonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(ListItem cellData)? cellPressed,
    TResult Function()? buttonPressed,
  }) {
    return buttonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(ListItem cellData)? cellPressed,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) {
    if (buttonPressed != null) {
      return buttonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnCellPressed value) cellPressed,
    required TResult Function(OnButtonPressed value) buttonPressed,
  }) {
    return buttonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnButtonPressed value)? buttonPressed,
  }) {
    return buttonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnCellPressed value)? cellPressed,
    TResult Function(OnButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (buttonPressed != null) {
      return buttonPressed(this);
    }
    return orElse();
  }
}

abstract class OnButtonPressed implements MoreDetailEvent {
  const factory OnButtonPressed() = _$OnButtonPressed;
}
