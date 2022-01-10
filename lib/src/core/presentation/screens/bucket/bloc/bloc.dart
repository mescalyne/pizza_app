import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/domain/entities/cart.dart';
import 'package:toto_mobile/src/core/domain/entities/edit_cart.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/domain/usecases/cart.dart';
import 'package:toto_mobile/src/core/domain/usecases/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/entities/cart_item_with_size.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/state.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/result.dart';

@Injectable()
class BucketBloc extends Bloc<BucketEvent, BucketState> {
  final RouterEventSink _routerEventSink;
  final GetMyCartUseCase _myCartUseCase;
  final RemoveItemUseCase _removeItemUseCase;
  final EditCartItemUseCase _editCartItemUseCase;
  final SetPromoUseCase _setPromoUseCase;
  final WatchDeliveryAddressUseCase _watchDeliveryAddressUseCase;
  final ChangeCurrentDeliveryAddressUseCase
      _changeCurrentDeliveryAddressUseCase;
  final GetRecommendedProductsForCartUseCase
      _getRecommendedProductsForCartUseCase;
  final AddItemToCartUseCase _addItemToCartUseCase;
  final Function? _backToHome;
  final RemoveCartUseCase _removeCartUseCase;
  final WatchCountItemInCartUseCase _watchCountItemInCartUseCase;

  static const int _countRecommendProducts = 10;
  static const oneSec = Duration(seconds: 1);
  late CartDto _loadedCart;
  Map<String, Timer> timerEditCartSend = {};
  List<CartItemWithSizes> cartItemsWithSizes = [];
  List<ProductDto> listRecommend = [];

  BucketBloc(
    this._routerEventSink,
    this._myCartUseCase,
    this._removeItemUseCase,
    this._editCartItemUseCase,
    this._setPromoUseCase,
    this._watchDeliveryAddressUseCase,
    this._getRecommendedProductsForCartUseCase,
    this._addItemToCartUseCase,
    this._changeCurrentDeliveryAddressUseCase,
    this._removeCartUseCase,
    this._watchCountItemInCartUseCase,
    @factoryParam this._backToHome,
  ) : super(BucketState(currScreen: BucketScreenStatus.loading)) {
    add(LoadBucketEvent());
    add(LoadRecommendEvent());
    _watchDeliveryAddressUseCase.deliveryAddress().listen(
      (deliveryAddress) {
        //TODO add(BucketEvent.changeAddress(deliveryAddress.id));
      },
    );
  }

  @override
  Stream<BucketState> mapEventToState(BucketEvent event) => event.when(
        loadBucket: _onLoad,
        loadRecommend: _onLoadRecommend,
        incrCount: _onIncrement,
        decrCount: _onDecrement,
        delItem: _onDelItem,
        acceptPromo: _onAcceptPromo,
        addRecomend: _onAddRecomend,
        cancelOrder: _onCancelOrder,
        onRouteToOrdering: onRouteToOrdering,
        onRouteToMenu: _onRouteToMenu,
        onEditCartItem: _onEditCartItem,
      );

  Stream<BucketState> _onLoadRecommend() async* {
    var recommendResult =
        await _getRecommendedProductsForCartUseCase(_countRecommendProducts);
    listRecommend = (recommendResult.isSuccess) ? recommendResult.value : [];
    yield state.copyWith(
      listRecommend: listRecommend,
      isAcceptAvailable: true,
    );
  }

  Stream<BucketState> _onLoad() async* {
    yield state.copyWith(
      currScreen: BucketScreenStatus.loading,
      isAcceptAvailable: false,
    );
    try {
      var result = await _myCartUseCase();
      if (result.isSuccess && result.value != null) {
        _loadedCart = result.value!;
        if (_loadedCart.items != null && _loadedCart.items!.isEmpty) {
          _watchCountItemInCartUseCase.setCountAll({});
          yield state.copyWith(
            currScreen: BucketScreenStatus.empty,
          );
        } else {
          Map<String, int> _countOfProducts = {};
          _loadedCart.items!
              .map((item) => {_countOfProducts[item.productId] = item.amount})
              .toList();
          _watchCountItemInCartUseCase.setCountAll(_countOfProducts);
          _loadedCart.items!.forEach((element) {
            var product = element.product;
            cartItemsWithSizes.add(CartItemWithSizes(product));
            var item = cartItemsWithSizes.last;
            item.countOfProduct = element.amount;
            if (product.productSizes != null &&
                product.productSizes!.isNotEmpty) {
              product.productSizes!.forEach((element) =>
                  item.addProductSize(ProductDto.fromProductSizesDto(element)));
            }

            var modifiers = element.modifiers;
            if (modifiers != null && modifiers.length > 0) {
              modifiers.forEach((element) {
                element.groupId == null
                    ? item.cartItemModifiers.add(element)
                    : item.cartItemGroupModifiers.add(element);
              });
            }
          });

          yield state.copyWith(
            currScreen: BucketScreenStatus.full,
            isAcceptAvailable: true,
            cartItemsWithSizes: cartItemsWithSizes,
            total: _loadedCart.total,
            totalPayment: _loadedCart.totalPayment,
            coupon: _loadedCart.coupon,
            discountSum: _loadedCart.discountSum,
          );
        }
      }
    } catch (ex) {
      Logger.logger('_loadingCart', ex.toString());
      yield state.copyWith(
        currScreen: BucketScreenStatus.error,
      );
    }
  }

  Stream<BucketState> _onDelItem(String id) async* {
    try {
      _watchCountItemInCartUseCase.delete(id);
      cartItemsWithSizes.removeWhere((element) => element.currentId == id);
      if (cartItemsWithSizes.isEmpty) {
        yield state.copyWith(
          currScreen: BucketScreenStatus.empty,
        );
        yield* _onCancelOrder();
      } else {
        yield state.copyWith(
          currScreen: BucketScreenStatus.full,
          cartItemsWithSizes: cartItemsWithSizes,
          isAcceptAvailable: false,
        );
        int itemtId = _loadedCart.items!
            .firstWhere((element) => element.productId == id)
            .id;

        if (timerEditCartSend[id] != null) {
          timerEditCartSend[id]?.cancel();
        }
        _removeItemUseCase(itemtId)
            .then((result) => add(OnEditCartItemEvent(result)));
      }
    } catch (ex) {
      Logger.logger('_onDelItem', ex.toString());
      yield state.copyWith(
        currScreen: BucketScreenStatus.error,
      );
    }
  }

  Stream<BucketState> _onEditCartItem(Result<CartDto> result) async* {
    try {
      if (result.isSuccess && result.value != null) {
        _loadedCart = result.value!;

        yield state.copyWith(
          currScreen: BucketScreenStatus.full,
          isAcceptAvailable: true,
          total: _loadedCart.total,
          totalPayment: _loadedCart.totalPayment,
        );
      }
    } catch (ex) {
      yield* _onLoad();
      Logger.logger('_onEditCartItem', ex.toString());
    }
  }

  Stream<BucketState> _onIncrement(String id, int amount) async* {
    yield state.copyWith(
      currScreen: BucketScreenStatus.full,
      isAcceptAvailable: false,
    );
    try {
      _watchCountItemInCartUseCase.setCount(id, 1);
      int indx =
          cartItemsWithSizes.indexWhere((element) => element.currentId == id);
      cartItemsWithSizes[indx].countOfProduct++;
      yield state.copyWith(
        currScreen: BucketScreenStatus.full,
        cartItemsWithSizes: cartItemsWithSizes,
      );
      var itemtId = _loadedCart.items!
          .firstWhere((element) => element.productId == id)
          .id;

      if (timerEditCartSend[id] != null) {
        timerEditCartSend[id]?.cancel();
      }
      timerEditCartSend[id] = await Timer.periodic(oneSec, (timer) async {
        Logger.logger('incrementCount', 'send #${amount + 1} of $id');
        _editCartItemUseCase(itemtId, amount + 1)
            .then((result) => add(OnEditCartItemEvent(result)));
        timer.cancel();
      });
    } catch (ex) {
      yield* _onLoad();
      Logger.logger('_onIncrement', ex.toString());
    }
  }

  Stream<BucketState> _onDecrement(String id, int amount) async* {
    yield state.copyWith(
      currScreen: BucketScreenStatus.full,
      isAcceptAvailable: false,
    );
    try {
      _watchCountItemInCartUseCase.setCount(id, -1);
      int indx =
          cartItemsWithSizes.indexWhere((element) => element.currentId == id);
      cartItemsWithSizes[indx].countOfProduct--;
      yield state.copyWith(
        currScreen: BucketScreenStatus.full,
        cartItemsWithSizes: cartItemsWithSizes,
      );
      var itemtId = _loadedCart.items!
          .firstWhere((element) => element.productId == id)
          .id;
      if (timerEditCartSend[id] != null) {
        timerEditCartSend[id]?.cancel();
      }
      timerEditCartSend[id] = await Timer.periodic(oneSec, (timer) async {
        Logger.logger('incrementCount', 'send #${amount - 1} of $id');
        _editCartItemUseCase(itemtId, amount - 1)
            .then((result) => add(OnEditCartItemEvent(result)));
        timer.cancel();
      });
    } catch (ex) {
      yield* _onLoad();
      Logger.logger('_onDecrement', ex.toString());
    }
  }

  Stream<BucketState> _onAcceptPromo(String promo) async* {
    yield state.copyWith(
      currScreen: BucketScreenStatus.full,
      isAcceptAvailable: false,
    );
    try {
      var result = await _setPromoUseCase(promo);
      if (result.isSuccess && result.value != null) {
        _loadedCart = result.value!;

        yield state.copyWith(
          currScreen: BucketScreenStatus.full,
          coupon: _loadedCart.coupon,
          discountSum: _loadedCart.discountSum,
          isAcceptAvailable: true,
        );
      }
    } catch (ex) {
      yield state.copyWith(
        currScreen: BucketScreenStatus.full,
        isIncorrectCoupon: true,
        isAcceptAvailable: true,
      );
      Logger.logger('_onAcceptPromo', ex.toString());
    }
  }

  Stream<BucketState> _onAddRecomend(String id, int amount) async* {
    yield state.copyWith(
      currScreen: BucketScreenStatus.full,
      isAcceptAvailable: false,
    );
    try {
      _watchCountItemInCartUseCase.setCount(id, amount);
      cartItemsWithSizes.add(CartItemWithSizes(
          listRecommend.firstWhere((element) => element.id == id)));
      cartItemsWithSizes.last.countOfProduct = amount;
      listRecommend.removeWhere((element) => element.id == id);
      yield state.copyWith(
        currScreen: BucketScreenStatus.full,
        cartItemsWithSizes: cartItemsWithSizes,
        listRecommend: listRecommend,
        isAcceptAvailable: false,
      );
      var result = await _addItemToCartUseCase(
          AddItemToCartInput(productId: id, amount: amount));
      if (result.isSuccess && result.value != null) {
        _loadedCart = result.value!;

        yield state.copyWith(
          currScreen: BucketScreenStatus.full,
          isAcceptAvailable: true,
          total: _loadedCart.total,
          totalPayment: _loadedCart.totalPayment,
        );
      }
    } catch (ex) {
      yield* _onLoad();
      Logger.logger('_onAcceptPromo', ex.toString());
    }
  }

  Stream<BucketState> onRouteToOrdering() async* {
    _routerEventSink.add(RouterEvent.toOrdering());
    // _routerEventSink.add(RouterEvent.toPayment());
  }

  Stream<BucketState> _onRouteToMenu() async* {
    _backToHome?.call();
  }

  Stream<BucketState> _onCancelOrder() async* {
    _watchCountItemInCartUseCase.deleteAll();
    try {
      var _removeResult = await _removeCartUseCase();
      if (_removeResult.isSuccess && _removeResult.value) {
        yield state.copyWith(
          currScreen: BucketScreenStatus.empty,
        );
      }
    } catch (ex) {
      yield* _onLoad();
      Logger.logger('_onCancelOrder', ex.toString());
    }
  }
}
