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
class _$BucketEventTearOff {
  const _$BucketEventTearOff();

  LoadBucketEvent loadBucket() {
    return const LoadBucketEvent();
  }

  LoadRecommendEvent loadRecommend() {
    return const LoadRecommendEvent();
  }

  IncrCountEvent incrCount(String id, int amount) {
    return IncrCountEvent(
      id,
      amount,
    );
  }

  DecrCountEvent decrCount(String id, int amount) {
    return DecrCountEvent(
      id,
      amount,
    );
  }

  DelItemEvent delItem(String id) {
    return DelItemEvent(
      id,
    );
  }

  CancelOrderEvent cancelOrder() {
    return const CancelOrderEvent();
  }

  AddRecommendEvent addRecomend(String id, int amount) {
    return AddRecommendEvent(
      id,
      amount,
    );
  }

  AcceptPromoEvent acceptPromo(String prm) {
    return AcceptPromoEvent(
      prm,
    );
  }

  OnRouteToOrderingEvent onRouteToOrdering() {
    return const OnRouteToOrderingEvent();
  }

  OnRouteToMenuEvent onRouteToMenu() {
    return const OnRouteToMenuEvent();
  }

  OnEditCartItemEvent onEditCartItem(Result<CartDto> result) {
    return OnEditCartItemEvent(
      result,
    );
  }
}

/// @nodoc
const $BucketEvent = _$BucketEventTearOff();

/// @nodoc
mixin _$BucketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() loadRecommend,
    required TResult Function(String id, int amount) incrCount,
    required TResult Function(String id, int amount) decrCount,
    required TResult Function(String id) delItem,
    required TResult Function() cancelOrder,
    required TResult Function(String id, int amount) addRecomend,
    required TResult Function(String prm) acceptPromo,
    required TResult Function() onRouteToOrdering,
    required TResult Function() onRouteToMenu,
    required TResult Function(Result<CartDto> result) onEditCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBucketEvent value) loadBucket,
    required TResult Function(LoadRecommendEvent value) loadRecommend,
    required TResult Function(IncrCountEvent value) incrCount,
    required TResult Function(DecrCountEvent value) decrCount,
    required TResult Function(DelItemEvent value) delItem,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(AddRecommendEvent value) addRecomend,
    required TResult Function(AcceptPromoEvent value) acceptPromo,
    required TResult Function(OnRouteToOrderingEvent value) onRouteToOrdering,
    required TResult Function(OnRouteToMenuEvent value) onRouteToMenu,
    required TResult Function(OnEditCartItemEvent value) onEditCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BucketEventCopyWith<$Res> {
  factory $BucketEventCopyWith(
          BucketEvent value, $Res Function(BucketEvent) then) =
      _$BucketEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BucketEventCopyWithImpl<$Res> implements $BucketEventCopyWith<$Res> {
  _$BucketEventCopyWithImpl(this._value, this._then);

  final BucketEvent _value;
  // ignore: unused_field
  final $Res Function(BucketEvent) _then;
}

/// @nodoc
abstract class $LoadBucketEventCopyWith<$Res> {
  factory $LoadBucketEventCopyWith(
          LoadBucketEvent value, $Res Function(LoadBucketEvent) then) =
      _$LoadBucketEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadBucketEventCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res>
    implements $LoadBucketEventCopyWith<$Res> {
  _$LoadBucketEventCopyWithImpl(
      LoadBucketEvent _value, $Res Function(LoadBucketEvent) _then)
      : super(_value, (v) => _then(v as LoadBucketEvent));

  @override
  LoadBucketEvent get _value => super._value as LoadBucketEvent;
}

/// @nodoc

class _$LoadBucketEvent implements LoadBucketEvent {
  const _$LoadBucketEvent();

  @override
  String toString() {
    return 'BucketEvent.loadBucket()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadBucketEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() loadRecommend,
    required TResult Function(String id, int amount) incrCount,
    required TResult Function(String id, int amount) decrCount,
    required TResult Function(String id) delItem,
    required TResult Function() cancelOrder,
    required TResult Function(String id, int amount) addRecomend,
    required TResult Function(String prm) acceptPromo,
    required TResult Function() onRouteToOrdering,
    required TResult Function() onRouteToMenu,
    required TResult Function(Result<CartDto> result) onEditCartItem,
  }) {
    return loadBucket();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
  }) {
    return loadBucket?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
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
    required TResult Function(LoadBucketEvent value) loadBucket,
    required TResult Function(LoadRecommendEvent value) loadRecommend,
    required TResult Function(IncrCountEvent value) incrCount,
    required TResult Function(DecrCountEvent value) decrCount,
    required TResult Function(DelItemEvent value) delItem,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(AddRecommendEvent value) addRecomend,
    required TResult Function(AcceptPromoEvent value) acceptPromo,
    required TResult Function(OnRouteToOrderingEvent value) onRouteToOrdering,
    required TResult Function(OnRouteToMenuEvent value) onRouteToMenu,
    required TResult Function(OnEditCartItemEvent value) onEditCartItem,
  }) {
    return loadBucket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
  }) {
    return loadBucket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (loadBucket != null) {
      return loadBucket(this);
    }
    return orElse();
  }
}

abstract class LoadBucketEvent implements BucketEvent {
  const factory LoadBucketEvent() = _$LoadBucketEvent;
}

/// @nodoc
abstract class $LoadRecommendEventCopyWith<$Res> {
  factory $LoadRecommendEventCopyWith(
          LoadRecommendEvent value, $Res Function(LoadRecommendEvent) then) =
      _$LoadRecommendEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadRecommendEventCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res>
    implements $LoadRecommendEventCopyWith<$Res> {
  _$LoadRecommendEventCopyWithImpl(
      LoadRecommendEvent _value, $Res Function(LoadRecommendEvent) _then)
      : super(_value, (v) => _then(v as LoadRecommendEvent));

  @override
  LoadRecommendEvent get _value => super._value as LoadRecommendEvent;
}

/// @nodoc

class _$LoadRecommendEvent implements LoadRecommendEvent {
  const _$LoadRecommendEvent();

  @override
  String toString() {
    return 'BucketEvent.loadRecommend()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadRecommendEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() loadRecommend,
    required TResult Function(String id, int amount) incrCount,
    required TResult Function(String id, int amount) decrCount,
    required TResult Function(String id) delItem,
    required TResult Function() cancelOrder,
    required TResult Function(String id, int amount) addRecomend,
    required TResult Function(String prm) acceptPromo,
    required TResult Function() onRouteToOrdering,
    required TResult Function() onRouteToMenu,
    required TResult Function(Result<CartDto> result) onEditCartItem,
  }) {
    return loadRecommend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
  }) {
    return loadRecommend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (loadRecommend != null) {
      return loadRecommend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBucketEvent value) loadBucket,
    required TResult Function(LoadRecommendEvent value) loadRecommend,
    required TResult Function(IncrCountEvent value) incrCount,
    required TResult Function(DecrCountEvent value) decrCount,
    required TResult Function(DelItemEvent value) delItem,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(AddRecommendEvent value) addRecomend,
    required TResult Function(AcceptPromoEvent value) acceptPromo,
    required TResult Function(OnRouteToOrderingEvent value) onRouteToOrdering,
    required TResult Function(OnRouteToMenuEvent value) onRouteToMenu,
    required TResult Function(OnEditCartItemEvent value) onEditCartItem,
  }) {
    return loadRecommend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
  }) {
    return loadRecommend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (loadRecommend != null) {
      return loadRecommend(this);
    }
    return orElse();
  }
}

abstract class LoadRecommendEvent implements BucketEvent {
  const factory LoadRecommendEvent() = _$LoadRecommendEvent;
}

/// @nodoc
abstract class $IncrCountEventCopyWith<$Res> {
  factory $IncrCountEventCopyWith(
          IncrCountEvent value, $Res Function(IncrCountEvent) then) =
      _$IncrCountEventCopyWithImpl<$Res>;
  $Res call({String id, int amount});
}

/// @nodoc
class _$IncrCountEventCopyWithImpl<$Res> extends _$BucketEventCopyWithImpl<$Res>
    implements $IncrCountEventCopyWith<$Res> {
  _$IncrCountEventCopyWithImpl(
      IncrCountEvent _value, $Res Function(IncrCountEvent) _then)
      : super(_value, (v) => _then(v as IncrCountEvent));

  @override
  IncrCountEvent get _value => super._value as IncrCountEvent;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
  }) {
    return _then(IncrCountEvent(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IncrCountEvent implements IncrCountEvent {
  const _$IncrCountEvent(this.id, this.amount);

  @override
  final String id;
  @override
  final int amount;

  @override
  String toString() {
    return 'BucketEvent.incrCount(id: $id, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncrCountEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  $IncrCountEventCopyWith<IncrCountEvent> get copyWith =>
      _$IncrCountEventCopyWithImpl<IncrCountEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() loadRecommend,
    required TResult Function(String id, int amount) incrCount,
    required TResult Function(String id, int amount) decrCount,
    required TResult Function(String id) delItem,
    required TResult Function() cancelOrder,
    required TResult Function(String id, int amount) addRecomend,
    required TResult Function(String prm) acceptPromo,
    required TResult Function() onRouteToOrdering,
    required TResult Function() onRouteToMenu,
    required TResult Function(Result<CartDto> result) onEditCartItem,
  }) {
    return incrCount(id, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
  }) {
    return incrCount?.call(id, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (incrCount != null) {
      return incrCount(id, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBucketEvent value) loadBucket,
    required TResult Function(LoadRecommendEvent value) loadRecommend,
    required TResult Function(IncrCountEvent value) incrCount,
    required TResult Function(DecrCountEvent value) decrCount,
    required TResult Function(DelItemEvent value) delItem,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(AddRecommendEvent value) addRecomend,
    required TResult Function(AcceptPromoEvent value) acceptPromo,
    required TResult Function(OnRouteToOrderingEvent value) onRouteToOrdering,
    required TResult Function(OnRouteToMenuEvent value) onRouteToMenu,
    required TResult Function(OnEditCartItemEvent value) onEditCartItem,
  }) {
    return incrCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
  }) {
    return incrCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (incrCount != null) {
      return incrCount(this);
    }
    return orElse();
  }
}

abstract class IncrCountEvent implements BucketEvent {
  const factory IncrCountEvent(String id, int amount) = _$IncrCountEvent;

  String get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncrCountEventCopyWith<IncrCountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecrCountEventCopyWith<$Res> {
  factory $DecrCountEventCopyWith(
          DecrCountEvent value, $Res Function(DecrCountEvent) then) =
      _$DecrCountEventCopyWithImpl<$Res>;
  $Res call({String id, int amount});
}

/// @nodoc
class _$DecrCountEventCopyWithImpl<$Res> extends _$BucketEventCopyWithImpl<$Res>
    implements $DecrCountEventCopyWith<$Res> {
  _$DecrCountEventCopyWithImpl(
      DecrCountEvent _value, $Res Function(DecrCountEvent) _then)
      : super(_value, (v) => _then(v as DecrCountEvent));

  @override
  DecrCountEvent get _value => super._value as DecrCountEvent;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
  }) {
    return _then(DecrCountEvent(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DecrCountEvent implements DecrCountEvent {
  const _$DecrCountEvent(this.id, this.amount);

  @override
  final String id;
  @override
  final int amount;

  @override
  String toString() {
    return 'BucketEvent.decrCount(id: $id, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DecrCountEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  $DecrCountEventCopyWith<DecrCountEvent> get copyWith =>
      _$DecrCountEventCopyWithImpl<DecrCountEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() loadRecommend,
    required TResult Function(String id, int amount) incrCount,
    required TResult Function(String id, int amount) decrCount,
    required TResult Function(String id) delItem,
    required TResult Function() cancelOrder,
    required TResult Function(String id, int amount) addRecomend,
    required TResult Function(String prm) acceptPromo,
    required TResult Function() onRouteToOrdering,
    required TResult Function() onRouteToMenu,
    required TResult Function(Result<CartDto> result) onEditCartItem,
  }) {
    return decrCount(id, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
  }) {
    return decrCount?.call(id, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (decrCount != null) {
      return decrCount(id, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBucketEvent value) loadBucket,
    required TResult Function(LoadRecommendEvent value) loadRecommend,
    required TResult Function(IncrCountEvent value) incrCount,
    required TResult Function(DecrCountEvent value) decrCount,
    required TResult Function(DelItemEvent value) delItem,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(AddRecommendEvent value) addRecomend,
    required TResult Function(AcceptPromoEvent value) acceptPromo,
    required TResult Function(OnRouteToOrderingEvent value) onRouteToOrdering,
    required TResult Function(OnRouteToMenuEvent value) onRouteToMenu,
    required TResult Function(OnEditCartItemEvent value) onEditCartItem,
  }) {
    return decrCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
  }) {
    return decrCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (decrCount != null) {
      return decrCount(this);
    }
    return orElse();
  }
}

abstract class DecrCountEvent implements BucketEvent {
  const factory DecrCountEvent(String id, int amount) = _$DecrCountEvent;

  String get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DecrCountEventCopyWith<DecrCountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DelItemEventCopyWith<$Res> {
  factory $DelItemEventCopyWith(
          DelItemEvent value, $Res Function(DelItemEvent) then) =
      _$DelItemEventCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$DelItemEventCopyWithImpl<$Res> extends _$BucketEventCopyWithImpl<$Res>
    implements $DelItemEventCopyWith<$Res> {
  _$DelItemEventCopyWithImpl(
      DelItemEvent _value, $Res Function(DelItemEvent) _then)
      : super(_value, (v) => _then(v as DelItemEvent));

  @override
  DelItemEvent get _value => super._value as DelItemEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(DelItemEvent(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DelItemEvent implements DelItemEvent {
  const _$DelItemEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'BucketEvent.delItem(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DelItemEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $DelItemEventCopyWith<DelItemEvent> get copyWith =>
      _$DelItemEventCopyWithImpl<DelItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() loadRecommend,
    required TResult Function(String id, int amount) incrCount,
    required TResult Function(String id, int amount) decrCount,
    required TResult Function(String id) delItem,
    required TResult Function() cancelOrder,
    required TResult Function(String id, int amount) addRecomend,
    required TResult Function(String prm) acceptPromo,
    required TResult Function() onRouteToOrdering,
    required TResult Function() onRouteToMenu,
    required TResult Function(Result<CartDto> result) onEditCartItem,
  }) {
    return delItem(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
  }) {
    return delItem?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (delItem != null) {
      return delItem(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBucketEvent value) loadBucket,
    required TResult Function(LoadRecommendEvent value) loadRecommend,
    required TResult Function(IncrCountEvent value) incrCount,
    required TResult Function(DecrCountEvent value) decrCount,
    required TResult Function(DelItemEvent value) delItem,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(AddRecommendEvent value) addRecomend,
    required TResult Function(AcceptPromoEvent value) acceptPromo,
    required TResult Function(OnRouteToOrderingEvent value) onRouteToOrdering,
    required TResult Function(OnRouteToMenuEvent value) onRouteToMenu,
    required TResult Function(OnEditCartItemEvent value) onEditCartItem,
  }) {
    return delItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
  }) {
    return delItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (delItem != null) {
      return delItem(this);
    }
    return orElse();
  }
}

abstract class DelItemEvent implements BucketEvent {
  const factory DelItemEvent(String id) = _$DelItemEvent;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DelItemEventCopyWith<DelItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelOrderEventCopyWith<$Res> {
  factory $CancelOrderEventCopyWith(
          CancelOrderEvent value, $Res Function(CancelOrderEvent) then) =
      _$CancelOrderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelOrderEventCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res>
    implements $CancelOrderEventCopyWith<$Res> {
  _$CancelOrderEventCopyWithImpl(
      CancelOrderEvent _value, $Res Function(CancelOrderEvent) _then)
      : super(_value, (v) => _then(v as CancelOrderEvent));

  @override
  CancelOrderEvent get _value => super._value as CancelOrderEvent;
}

/// @nodoc

class _$CancelOrderEvent implements CancelOrderEvent {
  const _$CancelOrderEvent();

  @override
  String toString() {
    return 'BucketEvent.cancelOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelOrderEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() loadRecommend,
    required TResult Function(String id, int amount) incrCount,
    required TResult Function(String id, int amount) decrCount,
    required TResult Function(String id) delItem,
    required TResult Function() cancelOrder,
    required TResult Function(String id, int amount) addRecomend,
    required TResult Function(String prm) acceptPromo,
    required TResult Function() onRouteToOrdering,
    required TResult Function() onRouteToMenu,
    required TResult Function(Result<CartDto> result) onEditCartItem,
  }) {
    return cancelOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
  }) {
    return cancelOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
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
    required TResult Function(LoadBucketEvent value) loadBucket,
    required TResult Function(LoadRecommendEvent value) loadRecommend,
    required TResult Function(IncrCountEvent value) incrCount,
    required TResult Function(DecrCountEvent value) decrCount,
    required TResult Function(DelItemEvent value) delItem,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(AddRecommendEvent value) addRecomend,
    required TResult Function(AcceptPromoEvent value) acceptPromo,
    required TResult Function(OnRouteToOrderingEvent value) onRouteToOrdering,
    required TResult Function(OnRouteToMenuEvent value) onRouteToMenu,
    required TResult Function(OnEditCartItemEvent value) onEditCartItem,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
  }) {
    return cancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class CancelOrderEvent implements BucketEvent {
  const factory CancelOrderEvent() = _$CancelOrderEvent;
}

/// @nodoc
abstract class $AddRecommendEventCopyWith<$Res> {
  factory $AddRecommendEventCopyWith(
          AddRecommendEvent value, $Res Function(AddRecommendEvent) then) =
      _$AddRecommendEventCopyWithImpl<$Res>;
  $Res call({String id, int amount});
}

/// @nodoc
class _$AddRecommendEventCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res>
    implements $AddRecommendEventCopyWith<$Res> {
  _$AddRecommendEventCopyWithImpl(
      AddRecommendEvent _value, $Res Function(AddRecommendEvent) _then)
      : super(_value, (v) => _then(v as AddRecommendEvent));

  @override
  AddRecommendEvent get _value => super._value as AddRecommendEvent;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
  }) {
    return _then(AddRecommendEvent(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddRecommendEvent implements AddRecommendEvent {
  const _$AddRecommendEvent(this.id, this.amount);

  @override
  final String id;
  @override
  final int amount;

  @override
  String toString() {
    return 'BucketEvent.addRecomend(id: $id, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddRecommendEvent &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  $AddRecommendEventCopyWith<AddRecommendEvent> get copyWith =>
      _$AddRecommendEventCopyWithImpl<AddRecommendEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() loadRecommend,
    required TResult Function(String id, int amount) incrCount,
    required TResult Function(String id, int amount) decrCount,
    required TResult Function(String id) delItem,
    required TResult Function() cancelOrder,
    required TResult Function(String id, int amount) addRecomend,
    required TResult Function(String prm) acceptPromo,
    required TResult Function() onRouteToOrdering,
    required TResult Function() onRouteToMenu,
    required TResult Function(Result<CartDto> result) onEditCartItem,
  }) {
    return addRecomend(id, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
  }) {
    return addRecomend?.call(id, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (addRecomend != null) {
      return addRecomend(id, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBucketEvent value) loadBucket,
    required TResult Function(LoadRecommendEvent value) loadRecommend,
    required TResult Function(IncrCountEvent value) incrCount,
    required TResult Function(DecrCountEvent value) decrCount,
    required TResult Function(DelItemEvent value) delItem,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(AddRecommendEvent value) addRecomend,
    required TResult Function(AcceptPromoEvent value) acceptPromo,
    required TResult Function(OnRouteToOrderingEvent value) onRouteToOrdering,
    required TResult Function(OnRouteToMenuEvent value) onRouteToMenu,
    required TResult Function(OnEditCartItemEvent value) onEditCartItem,
  }) {
    return addRecomend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
  }) {
    return addRecomend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (addRecomend != null) {
      return addRecomend(this);
    }
    return orElse();
  }
}

abstract class AddRecommendEvent implements BucketEvent {
  const factory AddRecommendEvent(String id, int amount) = _$AddRecommendEvent;

  String get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddRecommendEventCopyWith<AddRecommendEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptPromoEventCopyWith<$Res> {
  factory $AcceptPromoEventCopyWith(
          AcceptPromoEvent value, $Res Function(AcceptPromoEvent) then) =
      _$AcceptPromoEventCopyWithImpl<$Res>;
  $Res call({String prm});
}

/// @nodoc
class _$AcceptPromoEventCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res>
    implements $AcceptPromoEventCopyWith<$Res> {
  _$AcceptPromoEventCopyWithImpl(
      AcceptPromoEvent _value, $Res Function(AcceptPromoEvent) _then)
      : super(_value, (v) => _then(v as AcceptPromoEvent));

  @override
  AcceptPromoEvent get _value => super._value as AcceptPromoEvent;

  @override
  $Res call({
    Object? prm = freezed,
  }) {
    return _then(AcceptPromoEvent(
      prm == freezed
          ? _value.prm
          : prm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AcceptPromoEvent implements AcceptPromoEvent {
  const _$AcceptPromoEvent(this.prm);

  @override
  final String prm;

  @override
  String toString() {
    return 'BucketEvent.acceptPromo(prm: $prm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AcceptPromoEvent &&
            (identical(other.prm, prm) ||
                const DeepCollectionEquality().equals(other.prm, prm)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(prm);

  @JsonKey(ignore: true)
  @override
  $AcceptPromoEventCopyWith<AcceptPromoEvent> get copyWith =>
      _$AcceptPromoEventCopyWithImpl<AcceptPromoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() loadRecommend,
    required TResult Function(String id, int amount) incrCount,
    required TResult Function(String id, int amount) decrCount,
    required TResult Function(String id) delItem,
    required TResult Function() cancelOrder,
    required TResult Function(String id, int amount) addRecomend,
    required TResult Function(String prm) acceptPromo,
    required TResult Function() onRouteToOrdering,
    required TResult Function() onRouteToMenu,
    required TResult Function(Result<CartDto> result) onEditCartItem,
  }) {
    return acceptPromo(prm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
  }) {
    return acceptPromo?.call(prm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (acceptPromo != null) {
      return acceptPromo(prm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBucketEvent value) loadBucket,
    required TResult Function(LoadRecommendEvent value) loadRecommend,
    required TResult Function(IncrCountEvent value) incrCount,
    required TResult Function(DecrCountEvent value) decrCount,
    required TResult Function(DelItemEvent value) delItem,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(AddRecommendEvent value) addRecomend,
    required TResult Function(AcceptPromoEvent value) acceptPromo,
    required TResult Function(OnRouteToOrderingEvent value) onRouteToOrdering,
    required TResult Function(OnRouteToMenuEvent value) onRouteToMenu,
    required TResult Function(OnEditCartItemEvent value) onEditCartItem,
  }) {
    return acceptPromo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
  }) {
    return acceptPromo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (acceptPromo != null) {
      return acceptPromo(this);
    }
    return orElse();
  }
}

abstract class AcceptPromoEvent implements BucketEvent {
  const factory AcceptPromoEvent(String prm) = _$AcceptPromoEvent;

  String get prm => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AcceptPromoEventCopyWith<AcceptPromoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnRouteToOrderingEventCopyWith<$Res> {
  factory $OnRouteToOrderingEventCopyWith(OnRouteToOrderingEvent value,
          $Res Function(OnRouteToOrderingEvent) then) =
      _$OnRouteToOrderingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRouteToOrderingEventCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res>
    implements $OnRouteToOrderingEventCopyWith<$Res> {
  _$OnRouteToOrderingEventCopyWithImpl(OnRouteToOrderingEvent _value,
      $Res Function(OnRouteToOrderingEvent) _then)
      : super(_value, (v) => _then(v as OnRouteToOrderingEvent));

  @override
  OnRouteToOrderingEvent get _value => super._value as OnRouteToOrderingEvent;
}

/// @nodoc

class _$OnRouteToOrderingEvent implements OnRouteToOrderingEvent {
  const _$OnRouteToOrderingEvent();

  @override
  String toString() {
    return 'BucketEvent.onRouteToOrdering()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnRouteToOrderingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() loadRecommend,
    required TResult Function(String id, int amount) incrCount,
    required TResult Function(String id, int amount) decrCount,
    required TResult Function(String id) delItem,
    required TResult Function() cancelOrder,
    required TResult Function(String id, int amount) addRecomend,
    required TResult Function(String prm) acceptPromo,
    required TResult Function() onRouteToOrdering,
    required TResult Function() onRouteToMenu,
    required TResult Function(Result<CartDto> result) onEditCartItem,
  }) {
    return onRouteToOrdering();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
  }) {
    return onRouteToOrdering?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (onRouteToOrdering != null) {
      return onRouteToOrdering();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBucketEvent value) loadBucket,
    required TResult Function(LoadRecommendEvent value) loadRecommend,
    required TResult Function(IncrCountEvent value) incrCount,
    required TResult Function(DecrCountEvent value) decrCount,
    required TResult Function(DelItemEvent value) delItem,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(AddRecommendEvent value) addRecomend,
    required TResult Function(AcceptPromoEvent value) acceptPromo,
    required TResult Function(OnRouteToOrderingEvent value) onRouteToOrdering,
    required TResult Function(OnRouteToMenuEvent value) onRouteToMenu,
    required TResult Function(OnEditCartItemEvent value) onEditCartItem,
  }) {
    return onRouteToOrdering(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
  }) {
    return onRouteToOrdering?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (onRouteToOrdering != null) {
      return onRouteToOrdering(this);
    }
    return orElse();
  }
}

abstract class OnRouteToOrderingEvent implements BucketEvent {
  const factory OnRouteToOrderingEvent() = _$OnRouteToOrderingEvent;
}

/// @nodoc
abstract class $OnRouteToMenuEventCopyWith<$Res> {
  factory $OnRouteToMenuEventCopyWith(
          OnRouteToMenuEvent value, $Res Function(OnRouteToMenuEvent) then) =
      _$OnRouteToMenuEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRouteToMenuEventCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res>
    implements $OnRouteToMenuEventCopyWith<$Res> {
  _$OnRouteToMenuEventCopyWithImpl(
      OnRouteToMenuEvent _value, $Res Function(OnRouteToMenuEvent) _then)
      : super(_value, (v) => _then(v as OnRouteToMenuEvent));

  @override
  OnRouteToMenuEvent get _value => super._value as OnRouteToMenuEvent;
}

/// @nodoc

class _$OnRouteToMenuEvent implements OnRouteToMenuEvent {
  const _$OnRouteToMenuEvent();

  @override
  String toString() {
    return 'BucketEvent.onRouteToMenu()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnRouteToMenuEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() loadRecommend,
    required TResult Function(String id, int amount) incrCount,
    required TResult Function(String id, int amount) decrCount,
    required TResult Function(String id) delItem,
    required TResult Function() cancelOrder,
    required TResult Function(String id, int amount) addRecomend,
    required TResult Function(String prm) acceptPromo,
    required TResult Function() onRouteToOrdering,
    required TResult Function() onRouteToMenu,
    required TResult Function(Result<CartDto> result) onEditCartItem,
  }) {
    return onRouteToMenu();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
  }) {
    return onRouteToMenu?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (onRouteToMenu != null) {
      return onRouteToMenu();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBucketEvent value) loadBucket,
    required TResult Function(LoadRecommendEvent value) loadRecommend,
    required TResult Function(IncrCountEvent value) incrCount,
    required TResult Function(DecrCountEvent value) decrCount,
    required TResult Function(DelItemEvent value) delItem,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(AddRecommendEvent value) addRecomend,
    required TResult Function(AcceptPromoEvent value) acceptPromo,
    required TResult Function(OnRouteToOrderingEvent value) onRouteToOrdering,
    required TResult Function(OnRouteToMenuEvent value) onRouteToMenu,
    required TResult Function(OnEditCartItemEvent value) onEditCartItem,
  }) {
    return onRouteToMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
  }) {
    return onRouteToMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (onRouteToMenu != null) {
      return onRouteToMenu(this);
    }
    return orElse();
  }
}

abstract class OnRouteToMenuEvent implements BucketEvent {
  const factory OnRouteToMenuEvent() = _$OnRouteToMenuEvent;
}

/// @nodoc
abstract class $OnEditCartItemEventCopyWith<$Res> {
  factory $OnEditCartItemEventCopyWith(
          OnEditCartItemEvent value, $Res Function(OnEditCartItemEvent) then) =
      _$OnEditCartItemEventCopyWithImpl<$Res>;
  $Res call({Result<CartDto> result});
}

/// @nodoc
class _$OnEditCartItemEventCopyWithImpl<$Res>
    extends _$BucketEventCopyWithImpl<$Res>
    implements $OnEditCartItemEventCopyWith<$Res> {
  _$OnEditCartItemEventCopyWithImpl(
      OnEditCartItemEvent _value, $Res Function(OnEditCartItemEvent) _then)
      : super(_value, (v) => _then(v as OnEditCartItemEvent));

  @override
  OnEditCartItemEvent get _value => super._value as OnEditCartItemEvent;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(OnEditCartItemEvent(
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result<CartDto>,
    ));
  }
}

/// @nodoc

class _$OnEditCartItemEvent implements OnEditCartItemEvent {
  const _$OnEditCartItemEvent(this.result);

  @override
  final Result<CartDto> result;

  @override
  String toString() {
    return 'BucketEvent.onEditCartItem(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnEditCartItemEvent &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @JsonKey(ignore: true)
  @override
  $OnEditCartItemEventCopyWith<OnEditCartItemEvent> get copyWith =>
      _$OnEditCartItemEventCopyWithImpl<OnEditCartItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadBucket,
    required TResult Function() loadRecommend,
    required TResult Function(String id, int amount) incrCount,
    required TResult Function(String id, int amount) decrCount,
    required TResult Function(String id) delItem,
    required TResult Function() cancelOrder,
    required TResult Function(String id, int amount) addRecomend,
    required TResult Function(String prm) acceptPromo,
    required TResult Function() onRouteToOrdering,
    required TResult Function() onRouteToMenu,
    required TResult Function(Result<CartDto> result) onEditCartItem,
  }) {
    return onEditCartItem(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
  }) {
    return onEditCartItem?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadBucket,
    TResult Function()? loadRecommend,
    TResult Function(String id, int amount)? incrCount,
    TResult Function(String id, int amount)? decrCount,
    TResult Function(String id)? delItem,
    TResult Function()? cancelOrder,
    TResult Function(String id, int amount)? addRecomend,
    TResult Function(String prm)? acceptPromo,
    TResult Function()? onRouteToOrdering,
    TResult Function()? onRouteToMenu,
    TResult Function(Result<CartDto> result)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (onEditCartItem != null) {
      return onEditCartItem(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadBucketEvent value) loadBucket,
    required TResult Function(LoadRecommendEvent value) loadRecommend,
    required TResult Function(IncrCountEvent value) incrCount,
    required TResult Function(DecrCountEvent value) decrCount,
    required TResult Function(DelItemEvent value) delItem,
    required TResult Function(CancelOrderEvent value) cancelOrder,
    required TResult Function(AddRecommendEvent value) addRecomend,
    required TResult Function(AcceptPromoEvent value) acceptPromo,
    required TResult Function(OnRouteToOrderingEvent value) onRouteToOrdering,
    required TResult Function(OnRouteToMenuEvent value) onRouteToMenu,
    required TResult Function(OnEditCartItemEvent value) onEditCartItem,
  }) {
    return onEditCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
  }) {
    return onEditCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadBucketEvent value)? loadBucket,
    TResult Function(LoadRecommendEvent value)? loadRecommend,
    TResult Function(IncrCountEvent value)? incrCount,
    TResult Function(DecrCountEvent value)? decrCount,
    TResult Function(DelItemEvent value)? delItem,
    TResult Function(CancelOrderEvent value)? cancelOrder,
    TResult Function(AddRecommendEvent value)? addRecomend,
    TResult Function(AcceptPromoEvent value)? acceptPromo,
    TResult Function(OnRouteToOrderingEvent value)? onRouteToOrdering,
    TResult Function(OnRouteToMenuEvent value)? onRouteToMenu,
    TResult Function(OnEditCartItemEvent value)? onEditCartItem,
    required TResult orElse(),
  }) {
    if (onEditCartItem != null) {
      return onEditCartItem(this);
    }
    return orElse();
  }
}

abstract class OnEditCartItemEvent implements BucketEvent {
  const factory OnEditCartItemEvent(Result<CartDto> result) =
      _$OnEditCartItemEvent;

  Result<CartDto> get result => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnEditCartItemEventCopyWith<OnEditCartItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
