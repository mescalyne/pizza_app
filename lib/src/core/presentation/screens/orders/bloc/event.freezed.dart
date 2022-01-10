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
class _$OrdersEventTearOff {
  const _$OrdersEventTearOff();

  OnLoaded onLoaded() {
    return const OnLoaded();
  }

  ErrorLoading errorLoading() {
    return const ErrorLoading();
  }

  OnOpenMenu openMenu() {
    return const OnOpenMenu();
  }

  OnOpenAuthorization openAuthorization() {
    return const OnOpenAuthorization();
  }

  OnNextPage nextPage() {
    return const OnNextPage();
  }

  OnRefresh refresh() {
    return const OnRefresh();
  }

  OnToEstimationOrderStart onToEstimationOrderStart(int id) {
    return OnToEstimationOrderStart(
      id,
    );
  }

  OnToOrderDetailPage onToOrderDetailPage(int orderId) {
    return OnToOrderDetailPage(
      orderId,
    );
  }

  OnLoadWithGuest onLoadWithGuest(bool? isGuest) {
    return OnLoadWithGuest(
      isGuest,
    );
  }
}

/// @nodoc
const $OrdersEvent = _$OrdersEventTearOff();

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function() errorLoading,
    required TResult Function() openMenu,
    required TResult Function() openAuthorization,
    required TResult Function() nextPage,
    required TResult Function() refresh,
    required TResult Function(int id) onToEstimationOrderStart,
    required TResult Function(int orderId) onToOrderDetailPage,
    required TResult Function(bool? isGuest) onLoadWithGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnOpenMenu value) openMenu,
    required TResult Function(OnOpenAuthorization value) openAuthorization,
    required TResult Function(OnNextPage value) nextPage,
    required TResult Function(OnRefresh value) refresh,
    required TResult Function(OnToEstimationOrderStart value)
        onToEstimationOrderStart,
    required TResult Function(OnToOrderDetailPage value) onToOrderDetailPage,
    required TResult Function(OnLoadWithGuest value) onLoadWithGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res> implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  final OrdersEvent _value;
  // ignore: unused_field
  final $Res Function(OrdersEvent) _then;
}

/// @nodoc
abstract class $OnLoadedCopyWith<$Res> {
  factory $OnLoadedCopyWith(OnLoaded value, $Res Function(OnLoaded) then) =
      _$OnLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLoadedCopyWithImpl<$Res> extends _$OrdersEventCopyWithImpl<$Res>
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
    return 'OrdersEvent.onLoaded()';
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
    required TResult Function() errorLoading,
    required TResult Function() openMenu,
    required TResult Function() openAuthorization,
    required TResult Function() nextPage,
    required TResult Function() refresh,
    required TResult Function(int id) onToEstimationOrderStart,
    required TResult Function(int orderId) onToOrderDetailPage,
    required TResult Function(bool? isGuest) onLoadWithGuest,
  }) {
    return onLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
  }) {
    return onLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
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
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnOpenMenu value) openMenu,
    required TResult Function(OnOpenAuthorization value) openAuthorization,
    required TResult Function(OnNextPage value) nextPage,
    required TResult Function(OnRefresh value) refresh,
    required TResult Function(OnToEstimationOrderStart value)
        onToEstimationOrderStart,
    required TResult Function(OnToOrderDetailPage value) onToOrderDetailPage,
    required TResult Function(OnLoadWithGuest value) onLoadWithGuest,
  }) {
    return onLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
  }) {
    return onLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (onLoaded != null) {
      return onLoaded(this);
    }
    return orElse();
  }
}

abstract class OnLoaded implements OrdersEvent {
  const factory OnLoaded() = _$OnLoaded;
}

/// @nodoc
abstract class $ErrorLoadingCopyWith<$Res> {
  factory $ErrorLoadingCopyWith(
          ErrorLoading value, $Res Function(ErrorLoading) then) =
      _$ErrorLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorLoadingCopyWithImpl<$Res> extends _$OrdersEventCopyWithImpl<$Res>
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
    return 'OrdersEvent.errorLoading()';
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
    required TResult Function() onLoaded,
    required TResult Function() errorLoading,
    required TResult Function() openMenu,
    required TResult Function() openAuthorization,
    required TResult Function() nextPage,
    required TResult Function() refresh,
    required TResult Function(int id) onToEstimationOrderStart,
    required TResult Function(int orderId) onToOrderDetailPage,
    required TResult Function(bool? isGuest) onLoadWithGuest,
  }) {
    return errorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
  }) {
    return errorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
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
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnOpenMenu value) openMenu,
    required TResult Function(OnOpenAuthorization value) openAuthorization,
    required TResult Function(OnNextPage value) nextPage,
    required TResult Function(OnRefresh value) refresh,
    required TResult Function(OnToEstimationOrderStart value)
        onToEstimationOrderStart,
    required TResult Function(OnToOrderDetailPage value) onToOrderDetailPage,
    required TResult Function(OnLoadWithGuest value) onLoadWithGuest,
  }) {
    return errorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
  }) {
    return errorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading(this);
    }
    return orElse();
  }
}

abstract class ErrorLoading implements OrdersEvent {
  const factory ErrorLoading() = _$ErrorLoading;
}

/// @nodoc
abstract class $OnOpenMenuCopyWith<$Res> {
  factory $OnOpenMenuCopyWith(
          OnOpenMenu value, $Res Function(OnOpenMenu) then) =
      _$OnOpenMenuCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnOpenMenuCopyWithImpl<$Res> extends _$OrdersEventCopyWithImpl<$Res>
    implements $OnOpenMenuCopyWith<$Res> {
  _$OnOpenMenuCopyWithImpl(OnOpenMenu _value, $Res Function(OnOpenMenu) _then)
      : super(_value, (v) => _then(v as OnOpenMenu));

  @override
  OnOpenMenu get _value => super._value as OnOpenMenu;
}

/// @nodoc

class _$OnOpenMenu implements OnOpenMenu {
  const _$OnOpenMenu();

  @override
  String toString() {
    return 'OrdersEvent.openMenu()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnOpenMenu);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function() errorLoading,
    required TResult Function() openMenu,
    required TResult Function() openAuthorization,
    required TResult Function() nextPage,
    required TResult Function() refresh,
    required TResult Function(int id) onToEstimationOrderStart,
    required TResult Function(int orderId) onToOrderDetailPage,
    required TResult Function(bool? isGuest) onLoadWithGuest,
  }) {
    return openMenu();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
  }) {
    return openMenu?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (openMenu != null) {
      return openMenu();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnOpenMenu value) openMenu,
    required TResult Function(OnOpenAuthorization value) openAuthorization,
    required TResult Function(OnNextPage value) nextPage,
    required TResult Function(OnRefresh value) refresh,
    required TResult Function(OnToEstimationOrderStart value)
        onToEstimationOrderStart,
    required TResult Function(OnToOrderDetailPage value) onToOrderDetailPage,
    required TResult Function(OnLoadWithGuest value) onLoadWithGuest,
  }) {
    return openMenu(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
  }) {
    return openMenu?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (openMenu != null) {
      return openMenu(this);
    }
    return orElse();
  }
}

abstract class OnOpenMenu implements OrdersEvent {
  const factory OnOpenMenu() = _$OnOpenMenu;
}

/// @nodoc
abstract class $OnOpenAuthorizationCopyWith<$Res> {
  factory $OnOpenAuthorizationCopyWith(
          OnOpenAuthorization value, $Res Function(OnOpenAuthorization) then) =
      _$OnOpenAuthorizationCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnOpenAuthorizationCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res>
    implements $OnOpenAuthorizationCopyWith<$Res> {
  _$OnOpenAuthorizationCopyWithImpl(
      OnOpenAuthorization _value, $Res Function(OnOpenAuthorization) _then)
      : super(_value, (v) => _then(v as OnOpenAuthorization));

  @override
  OnOpenAuthorization get _value => super._value as OnOpenAuthorization;
}

/// @nodoc

class _$OnOpenAuthorization implements OnOpenAuthorization {
  const _$OnOpenAuthorization();

  @override
  String toString() {
    return 'OrdersEvent.openAuthorization()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnOpenAuthorization);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function() errorLoading,
    required TResult Function() openMenu,
    required TResult Function() openAuthorization,
    required TResult Function() nextPage,
    required TResult Function() refresh,
    required TResult Function(int id) onToEstimationOrderStart,
    required TResult Function(int orderId) onToOrderDetailPage,
    required TResult Function(bool? isGuest) onLoadWithGuest,
  }) {
    return openAuthorization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
  }) {
    return openAuthorization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (openAuthorization != null) {
      return openAuthorization();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnOpenMenu value) openMenu,
    required TResult Function(OnOpenAuthorization value) openAuthorization,
    required TResult Function(OnNextPage value) nextPage,
    required TResult Function(OnRefresh value) refresh,
    required TResult Function(OnToEstimationOrderStart value)
        onToEstimationOrderStart,
    required TResult Function(OnToOrderDetailPage value) onToOrderDetailPage,
    required TResult Function(OnLoadWithGuest value) onLoadWithGuest,
  }) {
    return openAuthorization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
  }) {
    return openAuthorization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (openAuthorization != null) {
      return openAuthorization(this);
    }
    return orElse();
  }
}

abstract class OnOpenAuthorization implements OrdersEvent {
  const factory OnOpenAuthorization() = _$OnOpenAuthorization;
}

/// @nodoc
abstract class $OnNextPageCopyWith<$Res> {
  factory $OnNextPageCopyWith(
          OnNextPage value, $Res Function(OnNextPage) then) =
      _$OnNextPageCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnNextPageCopyWithImpl<$Res> extends _$OrdersEventCopyWithImpl<$Res>
    implements $OnNextPageCopyWith<$Res> {
  _$OnNextPageCopyWithImpl(OnNextPage _value, $Res Function(OnNextPage) _then)
      : super(_value, (v) => _then(v as OnNextPage));

  @override
  OnNextPage get _value => super._value as OnNextPage;
}

/// @nodoc

class _$OnNextPage implements OnNextPage {
  const _$OnNextPage();

  @override
  String toString() {
    return 'OrdersEvent.nextPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnNextPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function() errorLoading,
    required TResult Function() openMenu,
    required TResult Function() openAuthorization,
    required TResult Function() nextPage,
    required TResult Function() refresh,
    required TResult Function(int id) onToEstimationOrderStart,
    required TResult Function(int orderId) onToOrderDetailPage,
    required TResult Function(bool? isGuest) onLoadWithGuest,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
  }) {
    return nextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnOpenMenu value) openMenu,
    required TResult Function(OnOpenAuthorization value) openAuthorization,
    required TResult Function(OnNextPage value) nextPage,
    required TResult Function(OnRefresh value) refresh,
    required TResult Function(OnToEstimationOrderStart value)
        onToEstimationOrderStart,
    required TResult Function(OnToOrderDetailPage value) onToOrderDetailPage,
    required TResult Function(OnLoadWithGuest value) onLoadWithGuest,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class OnNextPage implements OrdersEvent {
  const factory OnNextPage() = _$OnNextPage;
}

/// @nodoc
abstract class $OnRefreshCopyWith<$Res> {
  factory $OnRefreshCopyWith(OnRefresh value, $Res Function(OnRefresh) then) =
      _$OnRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnRefreshCopyWithImpl<$Res> extends _$OrdersEventCopyWithImpl<$Res>
    implements $OnRefreshCopyWith<$Res> {
  _$OnRefreshCopyWithImpl(OnRefresh _value, $Res Function(OnRefresh) _then)
      : super(_value, (v) => _then(v as OnRefresh));

  @override
  OnRefresh get _value => super._value as OnRefresh;
}

/// @nodoc

class _$OnRefresh implements OnRefresh {
  const _$OnRefresh();

  @override
  String toString() {
    return 'OrdersEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function() errorLoading,
    required TResult Function() openMenu,
    required TResult Function() openAuthorization,
    required TResult Function() nextPage,
    required TResult Function() refresh,
    required TResult Function(int id) onToEstimationOrderStart,
    required TResult Function(int orderId) onToOrderDetailPage,
    required TResult Function(bool? isGuest) onLoadWithGuest,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnOpenMenu value) openMenu,
    required TResult Function(OnOpenAuthorization value) openAuthorization,
    required TResult Function(OnNextPage value) nextPage,
    required TResult Function(OnRefresh value) refresh,
    required TResult Function(OnToEstimationOrderStart value)
        onToEstimationOrderStart,
    required TResult Function(OnToOrderDetailPage value) onToOrderDetailPage,
    required TResult Function(OnLoadWithGuest value) onLoadWithGuest,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class OnRefresh implements OrdersEvent {
  const factory OnRefresh() = _$OnRefresh;
}

/// @nodoc
abstract class $OnToEstimationOrderStartCopyWith<$Res> {
  factory $OnToEstimationOrderStartCopyWith(OnToEstimationOrderStart value,
          $Res Function(OnToEstimationOrderStart) then) =
      _$OnToEstimationOrderStartCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$OnToEstimationOrderStartCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res>
    implements $OnToEstimationOrderStartCopyWith<$Res> {
  _$OnToEstimationOrderStartCopyWithImpl(OnToEstimationOrderStart _value,
      $Res Function(OnToEstimationOrderStart) _then)
      : super(_value, (v) => _then(v as OnToEstimationOrderStart));

  @override
  OnToEstimationOrderStart get _value =>
      super._value as OnToEstimationOrderStart;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(OnToEstimationOrderStart(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnToEstimationOrderStart implements OnToEstimationOrderStart {
  const _$OnToEstimationOrderStart(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'OrdersEvent.onToEstimationOrderStart(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnToEstimationOrderStart &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $OnToEstimationOrderStartCopyWith<OnToEstimationOrderStart> get copyWith =>
      _$OnToEstimationOrderStartCopyWithImpl<OnToEstimationOrderStart>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function() errorLoading,
    required TResult Function() openMenu,
    required TResult Function() openAuthorization,
    required TResult Function() nextPage,
    required TResult Function() refresh,
    required TResult Function(int id) onToEstimationOrderStart,
    required TResult Function(int orderId) onToOrderDetailPage,
    required TResult Function(bool? isGuest) onLoadWithGuest,
  }) {
    return onToEstimationOrderStart(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
  }) {
    return onToEstimationOrderStart?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (onToEstimationOrderStart != null) {
      return onToEstimationOrderStart(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnOpenMenu value) openMenu,
    required TResult Function(OnOpenAuthorization value) openAuthorization,
    required TResult Function(OnNextPage value) nextPage,
    required TResult Function(OnRefresh value) refresh,
    required TResult Function(OnToEstimationOrderStart value)
        onToEstimationOrderStart,
    required TResult Function(OnToOrderDetailPage value) onToOrderDetailPage,
    required TResult Function(OnLoadWithGuest value) onLoadWithGuest,
  }) {
    return onToEstimationOrderStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
  }) {
    return onToEstimationOrderStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (onToEstimationOrderStart != null) {
      return onToEstimationOrderStart(this);
    }
    return orElse();
  }
}

abstract class OnToEstimationOrderStart implements OrdersEvent {
  const factory OnToEstimationOrderStart(int id) = _$OnToEstimationOrderStart;

  int get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnToEstimationOrderStartCopyWith<OnToEstimationOrderStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnToOrderDetailPageCopyWith<$Res> {
  factory $OnToOrderDetailPageCopyWith(
          OnToOrderDetailPage value, $Res Function(OnToOrderDetailPage) then) =
      _$OnToOrderDetailPageCopyWithImpl<$Res>;
  $Res call({int orderId});
}

/// @nodoc
class _$OnToOrderDetailPageCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res>
    implements $OnToOrderDetailPageCopyWith<$Res> {
  _$OnToOrderDetailPageCopyWithImpl(
      OnToOrderDetailPage _value, $Res Function(OnToOrderDetailPage) _then)
      : super(_value, (v) => _then(v as OnToOrderDetailPage));

  @override
  OnToOrderDetailPage get _value => super._value as OnToOrderDetailPage;

  @override
  $Res call({
    Object? orderId = freezed,
  }) {
    return _then(OnToOrderDetailPage(
      orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnToOrderDetailPage implements OnToOrderDetailPage {
  const _$OnToOrderDetailPage(this.orderId);

  @override
  final int orderId;

  @override
  String toString() {
    return 'OrdersEvent.onToOrderDetailPage(orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnToOrderDetailPage &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality().equals(other.orderId, orderId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(orderId);

  @JsonKey(ignore: true)
  @override
  $OnToOrderDetailPageCopyWith<OnToOrderDetailPage> get copyWith =>
      _$OnToOrderDetailPageCopyWithImpl<OnToOrderDetailPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLoaded,
    required TResult Function() errorLoading,
    required TResult Function() openMenu,
    required TResult Function() openAuthorization,
    required TResult Function() nextPage,
    required TResult Function() refresh,
    required TResult Function(int id) onToEstimationOrderStart,
    required TResult Function(int orderId) onToOrderDetailPage,
    required TResult Function(bool? isGuest) onLoadWithGuest,
  }) {
    return onToOrderDetailPage(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
  }) {
    return onToOrderDetailPage?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (onToOrderDetailPage != null) {
      return onToOrderDetailPage(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnOpenMenu value) openMenu,
    required TResult Function(OnOpenAuthorization value) openAuthorization,
    required TResult Function(OnNextPage value) nextPage,
    required TResult Function(OnRefresh value) refresh,
    required TResult Function(OnToEstimationOrderStart value)
        onToEstimationOrderStart,
    required TResult Function(OnToOrderDetailPage value) onToOrderDetailPage,
    required TResult Function(OnLoadWithGuest value) onLoadWithGuest,
  }) {
    return onToOrderDetailPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
  }) {
    return onToOrderDetailPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (onToOrderDetailPage != null) {
      return onToOrderDetailPage(this);
    }
    return orElse();
  }
}

abstract class OnToOrderDetailPage implements OrdersEvent {
  const factory OnToOrderDetailPage(int orderId) = _$OnToOrderDetailPage;

  int get orderId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnToOrderDetailPageCopyWith<OnToOrderDetailPage> get copyWith =>
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
class _$OnLoadWithGuestCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res>
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
    return 'OrdersEvent.onLoadWithGuest(isGuest: $isGuest)';
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
    required TResult Function() onLoaded,
    required TResult Function() errorLoading,
    required TResult Function() openMenu,
    required TResult Function() openAuthorization,
    required TResult Function() nextPage,
    required TResult Function() refresh,
    required TResult Function(int id) onToEstimationOrderStart,
    required TResult Function(int orderId) onToOrderDetailPage,
    required TResult Function(bool? isGuest) onLoadWithGuest,
  }) {
    return onLoadWithGuest(isGuest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
    TResult Function(bool? isGuest)? onLoadWithGuest,
  }) {
    return onLoadWithGuest?.call(isGuest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLoaded,
    TResult Function()? errorLoading,
    TResult Function()? openMenu,
    TResult Function()? openAuthorization,
    TResult Function()? nextPage,
    TResult Function()? refresh,
    TResult Function(int id)? onToEstimationOrderStart,
    TResult Function(int orderId)? onToOrderDetailPage,
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
    required TResult Function(OnLoaded value) onLoaded,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnOpenMenu value) openMenu,
    required TResult Function(OnOpenAuthorization value) openAuthorization,
    required TResult Function(OnNextPage value) nextPage,
    required TResult Function(OnRefresh value) refresh,
    required TResult Function(OnToEstimationOrderStart value)
        onToEstimationOrderStart,
    required TResult Function(OnToOrderDetailPage value) onToOrderDetailPage,
    required TResult Function(OnLoadWithGuest value) onLoadWithGuest,
  }) {
    return onLoadWithGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
  }) {
    return onLoadWithGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoaded value)? onLoaded,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnOpenMenu value)? openMenu,
    TResult Function(OnOpenAuthorization value)? openAuthorization,
    TResult Function(OnNextPage value)? nextPage,
    TResult Function(OnRefresh value)? refresh,
    TResult Function(OnToEstimationOrderStart value)? onToEstimationOrderStart,
    TResult Function(OnToOrderDetailPage value)? onToOrderDetailPage,
    TResult Function(OnLoadWithGuest value)? onLoadWithGuest,
    required TResult orElse(),
  }) {
    if (onLoadWithGuest != null) {
      return onLoadWithGuest(this);
    }
    return orElse();
  }
}

abstract class OnLoadWithGuest implements OrdersEvent {
  const factory OnLoadWithGuest(bool? isGuest) = _$OnLoadWithGuest;

  bool? get isGuest => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnLoadWithGuestCopyWith<OnLoadWithGuest> get copyWith =>
      throw _privateConstructorUsedError;
}
