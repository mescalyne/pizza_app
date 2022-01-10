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
class _$OrderEstimationEventTearOff {
  const _$OrderEstimationEventTearOff();

  Initialization initialization() {
    return const Initialization();
  }

  ErrorLoading errorLoading() {
    return const ErrorLoading();
  }

  OnEstimationOrderSend onEstimationOrderSend(
      String? comment, Set<int> ids, int estimate) {
    return OnEstimationOrderSend(
      comment,
      ids,
      estimate,
    );
  }
}

/// @nodoc
const $OrderEstimationEvent = _$OrderEstimationEventTearOff();

/// @nodoc
mixin _$OrderEstimationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() errorLoading,
    required TResult Function(String? comment, Set<int> ids, int estimate)
        onEstimationOrderSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String? comment, Set<int> ids, int estimate)?
        onEstimationOrderSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String? comment, Set<int> ids, int estimate)?
        onEstimationOrderSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEstimationOrderSend value)
        onEstimationOrderSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrderSend value)? onEstimationOrderSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrderSend value)? onEstimationOrderSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEstimationEventCopyWith<$Res> {
  factory $OrderEstimationEventCopyWith(OrderEstimationEvent value,
          $Res Function(OrderEstimationEvent) then) =
      _$OrderEstimationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderEstimationEventCopyWithImpl<$Res>
    implements $OrderEstimationEventCopyWith<$Res> {
  _$OrderEstimationEventCopyWithImpl(this._value, this._then);

  final OrderEstimationEvent _value;
  // ignore: unused_field
  final $Res Function(OrderEstimationEvent) _then;
}

/// @nodoc
abstract class $InitializationCopyWith<$Res> {
  factory $InitializationCopyWith(
          Initialization value, $Res Function(Initialization) then) =
      _$InitializationCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializationCopyWithImpl<$Res>
    extends _$OrderEstimationEventCopyWithImpl<$Res>
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
    return 'OrderEstimationEvent.initialization()';
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
    required TResult Function(String? comment, Set<int> ids, int estimate)
        onEstimationOrderSend,
  }) {
    return initialization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String? comment, Set<int> ids, int estimate)?
        onEstimationOrderSend,
  }) {
    return initialization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String? comment, Set<int> ids, int estimate)?
        onEstimationOrderSend,
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
    required TResult Function(OnEstimationOrderSend value)
        onEstimationOrderSend,
  }) {
    return initialization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrderSend value)? onEstimationOrderSend,
  }) {
    return initialization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrderSend value)? onEstimationOrderSend,
    required TResult orElse(),
  }) {
    if (initialization != null) {
      return initialization(this);
    }
    return orElse();
  }
}

abstract class Initialization implements OrderEstimationEvent {
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
    extends _$OrderEstimationEventCopyWithImpl<$Res>
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
    return 'OrderEstimationEvent.errorLoading()';
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
    required TResult Function(String? comment, Set<int> ids, int estimate)
        onEstimationOrderSend,
  }) {
    return errorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String? comment, Set<int> ids, int estimate)?
        onEstimationOrderSend,
  }) {
    return errorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String? comment, Set<int> ids, int estimate)?
        onEstimationOrderSend,
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
    required TResult Function(OnEstimationOrderSend value)
        onEstimationOrderSend,
  }) {
    return errorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrderSend value)? onEstimationOrderSend,
  }) {
    return errorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrderSend value)? onEstimationOrderSend,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading(this);
    }
    return orElse();
  }
}

abstract class ErrorLoading implements OrderEstimationEvent {
  const factory ErrorLoading() = _$ErrorLoading;
}

/// @nodoc
abstract class $OnEstimationOrderSendCopyWith<$Res> {
  factory $OnEstimationOrderSendCopyWith(OnEstimationOrderSend value,
          $Res Function(OnEstimationOrderSend) then) =
      _$OnEstimationOrderSendCopyWithImpl<$Res>;
  $Res call({String? comment, Set<int> ids, int estimate});
}

/// @nodoc
class _$OnEstimationOrderSendCopyWithImpl<$Res>
    extends _$OrderEstimationEventCopyWithImpl<$Res>
    implements $OnEstimationOrderSendCopyWith<$Res> {
  _$OnEstimationOrderSendCopyWithImpl(
      OnEstimationOrderSend _value, $Res Function(OnEstimationOrderSend) _then)
      : super(_value, (v) => _then(v as OnEstimationOrderSend));

  @override
  OnEstimationOrderSend get _value => super._value as OnEstimationOrderSend;

  @override
  $Res call({
    Object? comment = freezed,
    Object? ids = freezed,
    Object? estimate = freezed,
  }) {
    return _then(OnEstimationOrderSend(
      comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as Set<int>,
      estimate == freezed
          ? _value.estimate
          : estimate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnEstimationOrderSend implements OnEstimationOrderSend {
  const _$OnEstimationOrderSend(this.comment, this.ids, this.estimate);

  @override
  final String? comment;
  @override
  final Set<int> ids;
  @override
  final int estimate;

  @override
  String toString() {
    return 'OrderEstimationEvent.onEstimationOrderSend(comment: $comment, ids: $ids, estimate: $estimate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnEstimationOrderSend &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)) &&
            (identical(other.estimate, estimate) ||
                const DeepCollectionEquality()
                    .equals(other.estimate, estimate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(ids) ^
      const DeepCollectionEquality().hash(estimate);

  @JsonKey(ignore: true)
  @override
  $OnEstimationOrderSendCopyWith<OnEstimationOrderSend> get copyWith =>
      _$OnEstimationOrderSendCopyWithImpl<OnEstimationOrderSend>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() errorLoading,
    required TResult Function(String? comment, Set<int> ids, int estimate)
        onEstimationOrderSend,
  }) {
    return onEstimationOrderSend(comment, ids, estimate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String? comment, Set<int> ids, int estimate)?
        onEstimationOrderSend,
  }) {
    return onEstimationOrderSend?.call(comment, ids, estimate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String? comment, Set<int> ids, int estimate)?
        onEstimationOrderSend,
    required TResult orElse(),
  }) {
    if (onEstimationOrderSend != null) {
      return onEstimationOrderSend(comment, ids, estimate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEstimationOrderSend value)
        onEstimationOrderSend,
  }) {
    return onEstimationOrderSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrderSend value)? onEstimationOrderSend,
  }) {
    return onEstimationOrderSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrderSend value)? onEstimationOrderSend,
    required TResult orElse(),
  }) {
    if (onEstimationOrderSend != null) {
      return onEstimationOrderSend(this);
    }
    return orElse();
  }
}

abstract class OnEstimationOrderSend implements OrderEstimationEvent {
  const factory OnEstimationOrderSend(
      String? comment, Set<int> ids, int estimate) = _$OnEstimationOrderSend;

  String? get comment => throw _privateConstructorUsedError;
  Set<int> get ids => throw _privateConstructorUsedError;
  int get estimate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnEstimationOrderSendCopyWith<OnEstimationOrderSend> get copyWith =>
      throw _privateConstructorUsedError;
}
