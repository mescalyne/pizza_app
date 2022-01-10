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
class _$OrderDetailEventTearOff {
  const _$OrderDetailEventTearOff();

  OpenPage openPage() {
    return const OpenPage();
  }

  ErrorLoading errorLoading() {
    return const ErrorLoading();
  }

  OnEstimationOrder onEstimationOrder(int orderId) {
    return OnEstimationOrder(
      orderId,
    );
  }

  GetOrderDetailData getOrderDetailData() {
    return const GetOrderDetailData();
  }

  OnRepeatOrder onRepeatOrder() {
    return const OnRepeatOrder();
  }

  OnRouteToCartItem onRouteToCartItem(ProductDto productDto) {
    return OnRouteToCartItem(
      productDto,
    );
  }
}

/// @nodoc
const $OrderDetailEvent = _$OrderDetailEventTearOff();

/// @nodoc
mixin _$OrderDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openPage,
    required TResult Function() errorLoading,
    required TResult Function(int orderId) onEstimationOrder,
    required TResult Function() getOrderDetailData,
    required TResult Function() onRepeatOrder,
    required TResult Function(ProductDto productDto) onRouteToCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openPage,
    TResult Function()? errorLoading,
    TResult Function(int orderId)? onEstimationOrder,
    TResult Function()? getOrderDetailData,
    TResult Function()? onRepeatOrder,
    TResult Function(ProductDto productDto)? onRouteToCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openPage,
    TResult Function()? errorLoading,
    TResult Function(int orderId)? onEstimationOrder,
    TResult Function()? getOrderDetailData,
    TResult Function()? onRepeatOrder,
    TResult Function(ProductDto productDto)? onRouteToCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenPage value) openPage,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEstimationOrder value) onEstimationOrder,
    required TResult Function(GetOrderDetailData value) getOrderDetailData,
    required TResult Function(OnRepeatOrder value) onRepeatOrder,
    required TResult Function(OnRouteToCartItem value) onRouteToCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenPage value)? openPage,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrder value)? onEstimationOrder,
    TResult Function(GetOrderDetailData value)? getOrderDetailData,
    TResult Function(OnRepeatOrder value)? onRepeatOrder,
    TResult Function(OnRouteToCartItem value)? onRouteToCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenPage value)? openPage,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrder value)? onEstimationOrder,
    TResult Function(GetOrderDetailData value)? getOrderDetailData,
    TResult Function(OnRepeatOrder value)? onRepeatOrder,
    TResult Function(OnRouteToCartItem value)? onRouteToCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailEventCopyWith<$Res> {
  factory $OrderDetailEventCopyWith(
          OrderDetailEvent value, $Res Function(OrderDetailEvent) then) =
      _$OrderDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderDetailEventCopyWithImpl<$Res>
    implements $OrderDetailEventCopyWith<$Res> {
  _$OrderDetailEventCopyWithImpl(this._value, this._then);

  final OrderDetailEvent _value;
  // ignore: unused_field
  final $Res Function(OrderDetailEvent) _then;
}

/// @nodoc
abstract class $OpenPageCopyWith<$Res> {
  factory $OpenPageCopyWith(OpenPage value, $Res Function(OpenPage) then) =
      _$OpenPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenPageCopyWithImpl<$Res> extends _$OrderDetailEventCopyWithImpl<$Res>
    implements $OpenPageCopyWith<$Res> {
  _$OpenPageCopyWithImpl(OpenPage _value, $Res Function(OpenPage) _then)
      : super(_value, (v) => _then(v as OpenPage));

  @override
  OpenPage get _value => super._value as OpenPage;
}

/// @nodoc

class _$OpenPage implements OpenPage {
  const _$OpenPage();

  @override
  String toString() {
    return 'OrderDetailEvent.openPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OpenPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openPage,
    required TResult Function() errorLoading,
    required TResult Function(int orderId) onEstimationOrder,
    required TResult Function() getOrderDetailData,
    required TResult Function() onRepeatOrder,
    required TResult Function(ProductDto productDto) onRouteToCartItem,
  }) {
    return openPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openPage,
    TResult Function()? errorLoading,
    TResult Function(int orderId)? onEstimationOrder,
    TResult Function()? getOrderDetailData,
    TResult Function()? onRepeatOrder,
    TResult Function(ProductDto productDto)? onRouteToCartItem,
  }) {
    return openPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openPage,
    TResult Function()? errorLoading,
    TResult Function(int orderId)? onEstimationOrder,
    TResult Function()? getOrderDetailData,
    TResult Function()? onRepeatOrder,
    TResult Function(ProductDto productDto)? onRouteToCartItem,
    required TResult orElse(),
  }) {
    if (openPage != null) {
      return openPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenPage value) openPage,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEstimationOrder value) onEstimationOrder,
    required TResult Function(GetOrderDetailData value) getOrderDetailData,
    required TResult Function(OnRepeatOrder value) onRepeatOrder,
    required TResult Function(OnRouteToCartItem value) onRouteToCartItem,
  }) {
    return openPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenPage value)? openPage,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrder value)? onEstimationOrder,
    TResult Function(GetOrderDetailData value)? getOrderDetailData,
    TResult Function(OnRepeatOrder value)? onRepeatOrder,
    TResult Function(OnRouteToCartItem value)? onRouteToCartItem,
  }) {
    return openPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenPage value)? openPage,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrder value)? onEstimationOrder,
    TResult Function(GetOrderDetailData value)? getOrderDetailData,
    TResult Function(OnRepeatOrder value)? onRepeatOrder,
    TResult Function(OnRouteToCartItem value)? onRouteToCartItem,
    required TResult orElse(),
  }) {
    if (openPage != null) {
      return openPage(this);
    }
    return orElse();
  }
}

abstract class OpenPage implements OrderDetailEvent {
  const factory OpenPage() = _$OpenPage;
}

/// @nodoc
abstract class $ErrorLoadingCopyWith<$Res> {
  factory $ErrorLoadingCopyWith(
          ErrorLoading value, $Res Function(ErrorLoading) then) =
      _$ErrorLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorLoadingCopyWithImpl<$Res>
    extends _$OrderDetailEventCopyWithImpl<$Res>
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
    return 'OrderDetailEvent.errorLoading()';
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
    required TResult Function() openPage,
    required TResult Function() errorLoading,
    required TResult Function(int orderId) onEstimationOrder,
    required TResult Function() getOrderDetailData,
    required TResult Function() onRepeatOrder,
    required TResult Function(ProductDto productDto) onRouteToCartItem,
  }) {
    return errorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openPage,
    TResult Function()? errorLoading,
    TResult Function(int orderId)? onEstimationOrder,
    TResult Function()? getOrderDetailData,
    TResult Function()? onRepeatOrder,
    TResult Function(ProductDto productDto)? onRouteToCartItem,
  }) {
    return errorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openPage,
    TResult Function()? errorLoading,
    TResult Function(int orderId)? onEstimationOrder,
    TResult Function()? getOrderDetailData,
    TResult Function()? onRepeatOrder,
    TResult Function(ProductDto productDto)? onRouteToCartItem,
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
    required TResult Function(OpenPage value) openPage,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEstimationOrder value) onEstimationOrder,
    required TResult Function(GetOrderDetailData value) getOrderDetailData,
    required TResult Function(OnRepeatOrder value) onRepeatOrder,
    required TResult Function(OnRouteToCartItem value) onRouteToCartItem,
  }) {
    return errorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenPage value)? openPage,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrder value)? onEstimationOrder,
    TResult Function(GetOrderDetailData value)? getOrderDetailData,
    TResult Function(OnRepeatOrder value)? onRepeatOrder,
    TResult Function(OnRouteToCartItem value)? onRouteToCartItem,
  }) {
    return errorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenPage value)? openPage,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrder value)? onEstimationOrder,
    TResult Function(GetOrderDetailData value)? getOrderDetailData,
    TResult Function(OnRepeatOrder value)? onRepeatOrder,
    TResult Function(OnRouteToCartItem value)? onRouteToCartItem,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading(this);
    }
    return orElse();
  }
}

abstract class ErrorLoading implements OrderDetailEvent {
  const factory ErrorLoading() = _$ErrorLoading;
}

/// @nodoc
abstract class $OnEstimationOrderCopyWith<$Res> {
  factory $OnEstimationOrderCopyWith(
          OnEstimationOrder value, $Res Function(OnEstimationOrder) then) =
      _$OnEstimationOrderCopyWithImpl<$Res>;
  $Res call({int orderId});
}

/// @nodoc
class _$OnEstimationOrderCopyWithImpl<$Res>
    extends _$OrderDetailEventCopyWithImpl<$Res>
    implements $OnEstimationOrderCopyWith<$Res> {
  _$OnEstimationOrderCopyWithImpl(
      OnEstimationOrder _value, $Res Function(OnEstimationOrder) _then)
      : super(_value, (v) => _then(v as OnEstimationOrder));

  @override
  OnEstimationOrder get _value => super._value as OnEstimationOrder;

  @override
  $Res call({
    Object? orderId = freezed,
  }) {
    return _then(OnEstimationOrder(
      orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnEstimationOrder implements OnEstimationOrder {
  const _$OnEstimationOrder(this.orderId);

  @override
  final int orderId;

  @override
  String toString() {
    return 'OrderDetailEvent.onEstimationOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnEstimationOrder &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(other.orderId, orderId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderId);

  @JsonKey(ignore: true)
  @override
  $OnEstimationOrderCopyWith<OnEstimationOrder> get copyWith =>
      _$OnEstimationOrderCopyWithImpl<OnEstimationOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openPage,
    required TResult Function() errorLoading,
    required TResult Function(int orderId) onEstimationOrder,
    required TResult Function() getOrderDetailData,
    required TResult Function() onRepeatOrder,
    required TResult Function(ProductDto productDto) onRouteToCartItem,
  }) {
    return onEstimationOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openPage,
    TResult Function()? errorLoading,
    TResult Function(int orderId)? onEstimationOrder,
    TResult Function()? getOrderDetailData,
    TResult Function()? onRepeatOrder,
    TResult Function(ProductDto productDto)? onRouteToCartItem,
  }) {
    return onEstimationOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openPage,
    TResult Function()? errorLoading,
    TResult Function(int orderId)? onEstimationOrder,
    TResult Function()? getOrderDetailData,
    TResult Function()? onRepeatOrder,
    TResult Function(ProductDto productDto)? onRouteToCartItem,
    required TResult orElse(),
  }) {
    if (onEstimationOrder != null) {
      return onEstimationOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenPage value) openPage,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEstimationOrder value) onEstimationOrder,
    required TResult Function(GetOrderDetailData value) getOrderDetailData,
    required TResult Function(OnRepeatOrder value) onRepeatOrder,
    required TResult Function(OnRouteToCartItem value) onRouteToCartItem,
  }) {
    return onEstimationOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenPage value)? openPage,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrder value)? onEstimationOrder,
    TResult Function(GetOrderDetailData value)? getOrderDetailData,
    TResult Function(OnRepeatOrder value)? onRepeatOrder,
    TResult Function(OnRouteToCartItem value)? onRouteToCartItem,
  }) {
    return onEstimationOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenPage value)? openPage,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrder value)? onEstimationOrder,
    TResult Function(GetOrderDetailData value)? getOrderDetailData,
    TResult Function(OnRepeatOrder value)? onRepeatOrder,
    TResult Function(OnRouteToCartItem value)? onRouteToCartItem,
    required TResult orElse(),
  }) {
    if (onEstimationOrder != null) {
      return onEstimationOrder(this);
    }
    return orElse();
  }
}

abstract class OnEstimationOrder implements OrderDetailEvent {
  const factory OnEstimationOrder(int orderId) = _$OnEstimationOrder;

  int get orderId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnEstimationOrderCopyWith<OnEstimationOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderDetailDataCopyWith<$Res> {
  factory $GetOrderDetailDataCopyWith(
          GetOrderDetailData value, $Res Function(GetOrderDetailData) then) =
      _$GetOrderDetailDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetOrderDetailDataCopyWithImpl<$Res>
    extends _$OrderDetailEventCopyWithImpl<$Res>
    implements $GetOrderDetailDataCopyWith<$Res> {
  _$GetOrderDetailDataCopyWithImpl(
      GetOrderDetailData _value, $Res Function(GetOrderDetailData) _then)
      : super(_value, (v) => _then(v as GetOrderDetailData));

  @override
  GetOrderDetailData get _value => super._value as GetOrderDetailData;
}

/// @nodoc

class _$GetOrderDetailData implements GetOrderDetailData {
  const _$GetOrderDetailData();

  @override
  String toString() {
    return 'OrderDetailEvent.getOrderDetailData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetOrderDetailData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openPage,
    required TResult Function() errorLoading,
    required TResult Function(int orderId) onEstimationOrder,
    required TResult Function() getOrderDetailData,
    required TResult Function() onRepeatOrder,
    required TResult Function(ProductDto productDto) onRouteToCartItem,
  }) {
    return getOrderDetailData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openPage,
    TResult Function()? errorLoading,
    TResult Function(int orderId)? onEstimationOrder,
    TResult Function()? getOrderDetailData,
    TResult Function()? onRepeatOrder,
    TResult Function(ProductDto productDto)? onRouteToCartItem,
  }) {
    return getOrderDetailData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openPage,
    TResult Function()? errorLoading,
    TResult Function(int orderId)? onEstimationOrder,
    TResult Function()? getOrderDetailData,
    TResult Function()? onRepeatOrder,
    TResult Function(ProductDto productDto)? onRouteToCartItem,
    required TResult orElse(),
  }) {
    if (getOrderDetailData != null) {
      return getOrderDetailData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenPage value) openPage,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEstimationOrder value) onEstimationOrder,
    required TResult Function(GetOrderDetailData value) getOrderDetailData,
    required TResult Function(OnRepeatOrder value) onRepeatOrder,
    required TResult Function(OnRouteToCartItem value) onRouteToCartItem,
  }) {
    return getOrderDetailData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenPage value)? openPage,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrder value)? onEstimationOrder,
    TResult Function(GetOrderDetailData value)? getOrderDetailData,
    TResult Function(OnRepeatOrder value)? onRepeatOrder,
    TResult Function(OnRouteToCartItem value)? onRouteToCartItem,
  }) {
    return getOrderDetailData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenPage value)? openPage,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrder value)? onEstimationOrder,
    TResult Function(GetOrderDetailData value)? getOrderDetailData,
    TResult Function(OnRepeatOrder value)? onRepeatOrder,
    TResult Function(OnRouteToCartItem value)? onRouteToCartItem,
    required TResult orElse(),
  }) {
    if (getOrderDetailData != null) {
      return getOrderDetailData(this);
    }
    return orElse();
  }
}

abstract class GetOrderDetailData implements OrderDetailEvent {
  const factory GetOrderDetailData() = _$GetOrderDetailData;
}

/// @nodoc
abstract class $OnRepeatOrderCopyWith<$Res> {
  factory $OnRepeatOrderCopyWith(
          OnRepeatOrder value, $Res Function(OnRepeatOrder) then) =
      _$OnRepeatOrderCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRepeatOrderCopyWithImpl<$Res>
    extends _$OrderDetailEventCopyWithImpl<$Res>
    implements $OnRepeatOrderCopyWith<$Res> {
  _$OnRepeatOrderCopyWithImpl(
      OnRepeatOrder _value, $Res Function(OnRepeatOrder) _then)
      : super(_value, (v) => _then(v as OnRepeatOrder));

  @override
  OnRepeatOrder get _value => super._value as OnRepeatOrder;
}

/// @nodoc

class _$OnRepeatOrder implements OnRepeatOrder {
  const _$OnRepeatOrder();

  @override
  String toString() {
    return 'OrderDetailEvent.onRepeatOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnRepeatOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openPage,
    required TResult Function() errorLoading,
    required TResult Function(int orderId) onEstimationOrder,
    required TResult Function() getOrderDetailData,
    required TResult Function() onRepeatOrder,
    required TResult Function(ProductDto productDto) onRouteToCartItem,
  }) {
    return onRepeatOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openPage,
    TResult Function()? errorLoading,
    TResult Function(int orderId)? onEstimationOrder,
    TResult Function()? getOrderDetailData,
    TResult Function()? onRepeatOrder,
    TResult Function(ProductDto productDto)? onRouteToCartItem,
  }) {
    return onRepeatOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openPage,
    TResult Function()? errorLoading,
    TResult Function(int orderId)? onEstimationOrder,
    TResult Function()? getOrderDetailData,
    TResult Function()? onRepeatOrder,
    TResult Function(ProductDto productDto)? onRouteToCartItem,
    required TResult orElse(),
  }) {
    if (onRepeatOrder != null) {
      return onRepeatOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenPage value) openPage,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEstimationOrder value) onEstimationOrder,
    required TResult Function(GetOrderDetailData value) getOrderDetailData,
    required TResult Function(OnRepeatOrder value) onRepeatOrder,
    required TResult Function(OnRouteToCartItem value) onRouteToCartItem,
  }) {
    return onRepeatOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenPage value)? openPage,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrder value)? onEstimationOrder,
    TResult Function(GetOrderDetailData value)? getOrderDetailData,
    TResult Function(OnRepeatOrder value)? onRepeatOrder,
    TResult Function(OnRouteToCartItem value)? onRouteToCartItem,
  }) {
    return onRepeatOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenPage value)? openPage,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrder value)? onEstimationOrder,
    TResult Function(GetOrderDetailData value)? getOrderDetailData,
    TResult Function(OnRepeatOrder value)? onRepeatOrder,
    TResult Function(OnRouteToCartItem value)? onRouteToCartItem,
    required TResult orElse(),
  }) {
    if (onRepeatOrder != null) {
      return onRepeatOrder(this);
    }
    return orElse();
  }
}

abstract class OnRepeatOrder implements OrderDetailEvent {
  const factory OnRepeatOrder() = _$OnRepeatOrder;
}

/// @nodoc
abstract class $OnRouteToCartItemCopyWith<$Res> {
  factory $OnRouteToCartItemCopyWith(
          OnRouteToCartItem value, $Res Function(OnRouteToCartItem) then) =
      _$OnRouteToCartItemCopyWithImpl<$Res>;
  $Res call({ProductDto productDto});
}

/// @nodoc
class _$OnRouteToCartItemCopyWithImpl<$Res>
    extends _$OrderDetailEventCopyWithImpl<$Res>
    implements $OnRouteToCartItemCopyWith<$Res> {
  _$OnRouteToCartItemCopyWithImpl(
      OnRouteToCartItem _value, $Res Function(OnRouteToCartItem) _then)
      : super(_value, (v) => _then(v as OnRouteToCartItem));

  @override
  OnRouteToCartItem get _value => super._value as OnRouteToCartItem;

  @override
  $Res call({
    Object? productDto = freezed,
  }) {
    return _then(OnRouteToCartItem(
      productDto == freezed
          ? _value.productDto
          : productDto // ignore: cast_nullable_to_non_nullable
              as ProductDto,
    ));
  }
}

/// @nodoc

class _$OnRouteToCartItem implements OnRouteToCartItem {
  const _$OnRouteToCartItem(this.productDto);

  @override
  final ProductDto productDto;

  @override
  String toString() {
    return 'OrderDetailEvent.onRouteToCartItem(productDto: $productDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnRouteToCartItem &&
            (identical(other.productDto, productDto) ||
                const DeepCollectionEquality()
                    .equals(other.productDto, productDto)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(productDto);

  @JsonKey(ignore: true)
  @override
  $OnRouteToCartItemCopyWith<OnRouteToCartItem> get copyWith =>
      _$OnRouteToCartItemCopyWithImpl<OnRouteToCartItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() openPage,
    required TResult Function() errorLoading,
    required TResult Function(int orderId) onEstimationOrder,
    required TResult Function() getOrderDetailData,
    required TResult Function() onRepeatOrder,
    required TResult Function(ProductDto productDto) onRouteToCartItem,
  }) {
    return onRouteToCartItem(productDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? openPage,
    TResult Function()? errorLoading,
    TResult Function(int orderId)? onEstimationOrder,
    TResult Function()? getOrderDetailData,
    TResult Function()? onRepeatOrder,
    TResult Function(ProductDto productDto)? onRouteToCartItem,
  }) {
    return onRouteToCartItem?.call(productDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? openPage,
    TResult Function()? errorLoading,
    TResult Function(int orderId)? onEstimationOrder,
    TResult Function()? getOrderDetailData,
    TResult Function()? onRepeatOrder,
    TResult Function(ProductDto productDto)? onRouteToCartItem,
    required TResult orElse(),
  }) {
    if (onRouteToCartItem != null) {
      return onRouteToCartItem(productDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenPage value) openPage,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEstimationOrder value) onEstimationOrder,
    required TResult Function(GetOrderDetailData value) getOrderDetailData,
    required TResult Function(OnRepeatOrder value) onRepeatOrder,
    required TResult Function(OnRouteToCartItem value) onRouteToCartItem,
  }) {
    return onRouteToCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenPage value)? openPage,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrder value)? onEstimationOrder,
    TResult Function(GetOrderDetailData value)? getOrderDetailData,
    TResult Function(OnRepeatOrder value)? onRepeatOrder,
    TResult Function(OnRouteToCartItem value)? onRouteToCartItem,
  }) {
    return onRouteToCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenPage value)? openPage,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEstimationOrder value)? onEstimationOrder,
    TResult Function(GetOrderDetailData value)? getOrderDetailData,
    TResult Function(OnRepeatOrder value)? onRepeatOrder,
    TResult Function(OnRouteToCartItem value)? onRouteToCartItem,
    required TResult orElse(),
  }) {
    if (onRouteToCartItem != null) {
      return onRouteToCartItem(this);
    }
    return orElse();
  }
}

abstract class OnRouteToCartItem implements OrderDetailEvent {
  const factory OnRouteToCartItem(ProductDto productDto) = _$OnRouteToCartItem;

  ProductDto get productDto => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnRouteToCartItemCopyWith<OnRouteToCartItem> get copyWith =>
      throw _privateConstructorUsedError;
}
