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
class _$PaymentEventTearOff {
  const _$PaymentEventTearOff();

  LoadPaymentEvent loadBucket() {
    return const LoadPaymentEvent();
  }

  OnCancelOrder cancelOrder() {
    return const OnCancelOrder();
  }

  OnPayForOrder payment(PaymentTypeContent paymentType, int usedPoints) {
    return OnPayForOrder(
      paymentType,
      usedPoints,
    );
  }

  OnShowResult showResult(bool isSuccess) {
    return OnShowResult(
      isSuccess,
    );
  }
}

/// @nodoc
const $PaymentEvent = _$PaymentEventTearOff();

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() cancelOrder,
    required TResult Function(PaymentTypeContent paymentType, int usedPoints)
        payment,
    required TResult Function(bool isSuccess) showResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? cancelOrder,
    TResult Function(PaymentTypeContent paymentType, int usedPoints)? payment,
    TResult Function(bool isSuccess)? showResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? cancelOrder,
    TResult Function(PaymentTypeContent paymentType, int usedPoints)? payment,
    TResult Function(bool isSuccess)? showResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPaymentEvent value) loadBucket,
    required TResult Function(OnCancelOrder value) cancelOrder,
    required TResult Function(OnPayForOrder value) payment,
    required TResult Function(OnShowResult value) showResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPaymentEvent value)? loadBucket,
    TResult Function(OnCancelOrder value)? cancelOrder,
    TResult Function(OnPayForOrder value)? payment,
    TResult Function(OnShowResult value)? showResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPaymentEvent value)? loadBucket,
    TResult Function(OnCancelOrder value)? cancelOrder,
    TResult Function(OnPayForOrder value)? payment,
    TResult Function(OnShowResult value)? showResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res> implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  final PaymentEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentEvent) _then;
}

/// @nodoc
abstract class $LoadPaymentEventCopyWith<$Res> {
  factory $LoadPaymentEventCopyWith(
          LoadPaymentEvent value, $Res Function(LoadPaymentEvent) then) =
      _$LoadPaymentEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadPaymentEventCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res>
    implements $LoadPaymentEventCopyWith<$Res> {
  _$LoadPaymentEventCopyWithImpl(
      LoadPaymentEvent _value, $Res Function(LoadPaymentEvent) _then)
      : super(_value, (v) => _then(v as LoadPaymentEvent));

  @override
  LoadPaymentEvent get _value => super._value as LoadPaymentEvent;
}

/// @nodoc

class _$LoadPaymentEvent implements LoadPaymentEvent {
  const _$LoadPaymentEvent();

  @override
  String toString() {
    return 'PaymentEvent.loadBucket()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadPaymentEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() cancelOrder,
    required TResult Function(PaymentTypeContent paymentType, int usedPoints)
        payment,
    required TResult Function(bool isSuccess) showResult,
  }) {
    return loadBucket();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? cancelOrder,
    TResult Function(PaymentTypeContent paymentType, int usedPoints)? payment,
    TResult Function(bool isSuccess)? showResult,
  }) {
    return loadBucket?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? cancelOrder,
    TResult Function(PaymentTypeContent paymentType, int usedPoints)? payment,
    TResult Function(bool isSuccess)? showResult,
    required TResult orElse(),
  }) {
    if (loadBucket != null) {
      return loadBucket();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPaymentEvent value) loadBucket,
    required TResult Function(OnCancelOrder value) cancelOrder,
    required TResult Function(OnPayForOrder value) payment,
    required TResult Function(OnShowResult value) showResult,
  }) {
    return loadBucket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPaymentEvent value)? loadBucket,
    TResult Function(OnCancelOrder value)? cancelOrder,
    TResult Function(OnPayForOrder value)? payment,
    TResult Function(OnShowResult value)? showResult,
  }) {
    return loadBucket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPaymentEvent value)? loadBucket,
    TResult Function(OnCancelOrder value)? cancelOrder,
    TResult Function(OnPayForOrder value)? payment,
    TResult Function(OnShowResult value)? showResult,
    required TResult orElse(),
  }) {
    if (loadBucket != null) {
      return loadBucket(this);
    }
    return orElse();
  }
}

abstract class LoadPaymentEvent implements PaymentEvent {
  const factory LoadPaymentEvent() = _$LoadPaymentEvent;
}

/// @nodoc
abstract class $OnCancelOrderCopyWith<$Res> {
  factory $OnCancelOrderCopyWith(
          OnCancelOrder value, $Res Function(OnCancelOrder) then) =
      _$OnCancelOrderCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnCancelOrderCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements $OnCancelOrderCopyWith<$Res> {
  _$OnCancelOrderCopyWithImpl(
      OnCancelOrder _value, $Res Function(OnCancelOrder) _then)
      : super(_value, (v) => _then(v as OnCancelOrder));

  @override
  OnCancelOrder get _value => super._value as OnCancelOrder;
}

/// @nodoc

class _$OnCancelOrder implements OnCancelOrder {
  const _$OnCancelOrder();

  @override
  String toString() {
    return 'PaymentEvent.cancelOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnCancelOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() cancelOrder,
    required TResult Function(PaymentTypeContent paymentType, int usedPoints)
        payment,
    required TResult Function(bool isSuccess) showResult,
  }) {
    return cancelOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? cancelOrder,
    TResult Function(PaymentTypeContent paymentType, int usedPoints)? payment,
    TResult Function(bool isSuccess)? showResult,
  }) {
    return cancelOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? cancelOrder,
    TResult Function(PaymentTypeContent paymentType, int usedPoints)? payment,
    TResult Function(bool isSuccess)? showResult,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPaymentEvent value) loadBucket,
    required TResult Function(OnCancelOrder value) cancelOrder,
    required TResult Function(OnPayForOrder value) payment,
    required TResult Function(OnShowResult value) showResult,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPaymentEvent value)? loadBucket,
    TResult Function(OnCancelOrder value)? cancelOrder,
    TResult Function(OnPayForOrder value)? payment,
    TResult Function(OnShowResult value)? showResult,
  }) {
    return cancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPaymentEvent value)? loadBucket,
    TResult Function(OnCancelOrder value)? cancelOrder,
    TResult Function(OnPayForOrder value)? payment,
    TResult Function(OnShowResult value)? showResult,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class OnCancelOrder implements PaymentEvent {
  const factory OnCancelOrder() = _$OnCancelOrder;
}

/// @nodoc
abstract class $OnPayForOrderCopyWith<$Res> {
  factory $OnPayForOrderCopyWith(
          OnPayForOrder value, $Res Function(OnPayForOrder) then) =
      _$OnPayForOrderCopyWithImpl<$Res>;
  $Res call({PaymentTypeContent paymentType, int usedPoints});
}

/// @nodoc
class _$OnPayForOrderCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements $OnPayForOrderCopyWith<$Res> {
  _$OnPayForOrderCopyWithImpl(
      OnPayForOrder _value, $Res Function(OnPayForOrder) _then)
      : super(_value, (v) => _then(v as OnPayForOrder));

  @override
  OnPayForOrder get _value => super._value as OnPayForOrder;

  @override
  $Res call({
    Object? paymentType = freezed,
    Object? usedPoints = freezed,
  }) {
    return _then(OnPayForOrder(
      paymentType == freezed
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as PaymentTypeContent,
      usedPoints == freezed
          ? _value.usedPoints
          : usedPoints // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnPayForOrder implements OnPayForOrder {
  const _$OnPayForOrder(this.paymentType, this.usedPoints);

  @override
  final PaymentTypeContent paymentType;
  @override
  final int usedPoints;

  @override
  String toString() {
    return 'PaymentEvent.payment(paymentType: $paymentType, usedPoints: $usedPoints)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnPayForOrder &&
            (identical(other.paymentType, paymentType) ||
                const DeepCollectionEquality()
                    .equals(other.paymentType, paymentType)) &&
            (identical(other.usedPoints, usedPoints) ||
                const DeepCollectionEquality()
                    .equals(other.usedPoints, usedPoints)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paymentType) ^
      const DeepCollectionEquality().hash(usedPoints);

  @JsonKey(ignore: true)
  @override
  $OnPayForOrderCopyWith<OnPayForOrder> get copyWith =>
      _$OnPayForOrderCopyWithImpl<OnPayForOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() cancelOrder,
    required TResult Function(PaymentTypeContent paymentType, int usedPoints)
        payment,
    required TResult Function(bool isSuccess) showResult,
  }) {
    return payment(paymentType, usedPoints);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? cancelOrder,
    TResult Function(PaymentTypeContent paymentType, int usedPoints)? payment,
    TResult Function(bool isSuccess)? showResult,
  }) {
    return payment?.call(paymentType, usedPoints);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? cancelOrder,
    TResult Function(PaymentTypeContent paymentType, int usedPoints)? payment,
    TResult Function(bool isSuccess)? showResult,
    required TResult orElse(),
  }) {
    if (payment != null) {
      return payment(paymentType, usedPoints);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPaymentEvent value) loadBucket,
    required TResult Function(OnCancelOrder value) cancelOrder,
    required TResult Function(OnPayForOrder value) payment,
    required TResult Function(OnShowResult value) showResult,
  }) {
    return payment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPaymentEvent value)? loadBucket,
    TResult Function(OnCancelOrder value)? cancelOrder,
    TResult Function(OnPayForOrder value)? payment,
    TResult Function(OnShowResult value)? showResult,
  }) {
    return payment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPaymentEvent value)? loadBucket,
    TResult Function(OnCancelOrder value)? cancelOrder,
    TResult Function(OnPayForOrder value)? payment,
    TResult Function(OnShowResult value)? showResult,
    required TResult orElse(),
  }) {
    if (payment != null) {
      return payment(this);
    }
    return orElse();
  }
}

abstract class OnPayForOrder implements PaymentEvent {
  const factory OnPayForOrder(PaymentTypeContent paymentType, int usedPoints) =
      _$OnPayForOrder;

  PaymentTypeContent get paymentType => throw _privateConstructorUsedError;
  int get usedPoints => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnPayForOrderCopyWith<OnPayForOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnShowResultCopyWith<$Res> {
  factory $OnShowResultCopyWith(
          OnShowResult value, $Res Function(OnShowResult) then) =
      _$OnShowResultCopyWithImpl<$Res>;
  $Res call({bool isSuccess});
}

/// @nodoc
class _$OnShowResultCopyWithImpl<$Res> extends _$PaymentEventCopyWithImpl<$Res>
    implements $OnShowResultCopyWith<$Res> {
  _$OnShowResultCopyWithImpl(
      OnShowResult _value, $Res Function(OnShowResult) _then)
      : super(_value, (v) => _then(v as OnShowResult));

  @override
  OnShowResult get _value => super._value as OnShowResult;

  @override
  $Res call({
    Object? isSuccess = freezed,
  }) {
    return _then(OnShowResult(
      isSuccess == freezed
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnShowResult implements OnShowResult {
  const _$OnShowResult(this.isSuccess);

  @override
  final bool isSuccess;

  @override
  String toString() {
    return 'PaymentEvent.showResult(isSuccess: $isSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnShowResult &&
            (identical(other.isSuccess, isSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.isSuccess, isSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isSuccess);

  @JsonKey(ignore: true)
  @override
  $OnShowResultCopyWith<OnShowResult> get copyWith =>
      _$OnShowResultCopyWithImpl<OnShowResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() cancelOrder,
    required TResult Function(PaymentTypeContent paymentType, int usedPoints)
        payment,
    required TResult Function(bool isSuccess) showResult,
  }) {
    return showResult(isSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? cancelOrder,
    TResult Function(PaymentTypeContent paymentType, int usedPoints)? payment,
    TResult Function(bool isSuccess)? showResult,
  }) {
    return showResult?.call(isSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? cancelOrder,
    TResult Function(PaymentTypeContent paymentType, int usedPoints)? payment,
    TResult Function(bool isSuccess)? showResult,
    required TResult orElse(),
  }) {
    if (showResult != null) {
      return showResult(isSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPaymentEvent value) loadBucket,
    required TResult Function(OnCancelOrder value) cancelOrder,
    required TResult Function(OnPayForOrder value) payment,
    required TResult Function(OnShowResult value) showResult,
  }) {
    return showResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadPaymentEvent value)? loadBucket,
    TResult Function(OnCancelOrder value)? cancelOrder,
    TResult Function(OnPayForOrder value)? payment,
    TResult Function(OnShowResult value)? showResult,
  }) {
    return showResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPaymentEvent value)? loadBucket,
    TResult Function(OnCancelOrder value)? cancelOrder,
    TResult Function(OnPayForOrder value)? payment,
    TResult Function(OnShowResult value)? showResult,
    required TResult orElse(),
  }) {
    if (showResult != null) {
      return showResult(this);
    }
    return orElse();
  }
}

abstract class OnShowResult implements PaymentEvent {
  const factory OnShowResult(bool isSuccess) = _$OnShowResult;

  bool get isSuccess => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnShowResultCopyWith<OnShowResult> get copyWith =>
      throw _privateConstructorUsedError;
}
