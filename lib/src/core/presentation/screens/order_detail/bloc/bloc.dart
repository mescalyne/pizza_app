import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/domain/entities/edit_cart.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/domain/usecases/cart.dart';
import 'package:toto_mobile/src/core/domain/usecases/delivery_detail.dart';
import 'package:toto_mobile/src/core/presentation/entities/delivery.dart';
import 'package:toto_mobile/src/core/presentation/entities/delivery_detail.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/bloc/state.dart';

typedef OrderDetailEventHandler = Stream<OrderDetailState>;

@Injectable()
class OrderDetailBloc extends Bloc<OrderDetailEvent, OrderDetailState> {
  final RouterEventSink _routerEventSink;
  final RemoveCartUseCase _removeCartUseCase;
  final AddItemsToCartUseCase _addItemsToCartUseCase;
  int? orderId;
  final DeliveryDetailUseCase _useCase;
  Timer? timerUpdate;

  OrderDetailBloc(
    @factoryParam this.orderId,
    this._removeCartUseCase,
    this._routerEventSink,
    this._addItemsToCartUseCase,
    this._useCase,
  ) : super(OrderDetailState(
            currentStatus: OrderDetailStatus.loadedData,
            orderId: orderId,
            currentOrder: DeliveryDetailData(
              orderID: orderId!,
              orderState: DeliveryOrderState.adopted,
              orderPrice: 0,
              items: [],
            ))) {
    add(OpenPage());
  }

  @override
  OrderDetailEventHandler mapEventToState(OrderDetailEvent event) => event.when(
        openPage: _openPage,
        errorLoading: _onErrorLoading,
        onEstimationOrder: _onEstimationOrder,
        getOrderDetailData: _getOrderDetailData,
        onRepeatOrder: _onRepeatOrder,
        onRouteToCartItem: _onRouteToCardItem,
      );

  OrderDetailEventHandler _onRepeatOrder() async* {
    yield state.copyWith(currentStatus: OrderDetailStatus.closeModal);
    //Если нужно будет просто добавить товары без очищения корзины, это убрать.
    var deleteData = await _removeCartUseCase();
    if (deleteData.isSuccess && deleteData.value != null) {
      List<AddItemToCartInput> listItems = [];
      this.state.currentOrder.items.forEach((element) async {
        //List<CartItemModifierInputDto> modifiers = [];
        //TODO: Добавить отправку модификаторов кроме Томбо, они сейчас еще не используются
        listItems.add(AddItemToCartInput(
          productId: element.productId,
          amount: element.amount,
          name: element.name,
          code: element.code,
          //modifiers: (modifiers.length > 1) ? modifiers : null,
        ));
      });
      var result = await _addItemsToCartUseCase(listItems);
      if (result.isFailure == true || result.value == null) {
        yield state.copyWith(currentStatus: OrderDetailStatus.error);
        return;
      }
    } else {
      yield state.copyWith(currentStatus: OrderDetailStatus.error);
      return;
    }
    _routerEventSink.add(RouterEvent.orderDetailToHomeMenu());
  }

  OrderDetailEventHandler _onRouteToCardItem(ProductDto productDto) async* {
    if (productDto.parentGroup == 'Наборы') {
      _routerEventSink
          .add(RouterEvent.toSetsPage(productDto.id, productDto.name, true));
    } else {
      _routerEventSink.add(RouterEvent.toAddition(productDto.id));
    }
  }

  OrderDetailEventHandler _onErrorLoading() async* {
    _cancelUpdateTimer();
    _routerEventSink.add(RouterEvent.pop());
  }

  OrderDetailEventHandler _onEstimationOrder(int orderId) async* {
    _routerEventSink.add(RouterEvent.toOrderEstimation(orderId));
  }

  OrderDetailEventHandler _openPage() async* {
    var data = await _useCase.getOrderData(orderId!);
    if ((data.isSuccess) && (data.value != null)) {
      yield state.copyWith(
          currentStatus: OrderDetailStatus.viewContent,
          currentOrder: data.value);
      if (data.value!.orderState != DeliveryOrderState.delivered &&
          data.value!.orderState != DeliveryOrderState.canceled) {
        _startUpdateTimer();
      }
      return;
    } else {
      yield state.copyWith(currentStatus: OrderDetailStatus.error);
    }
  }

  OrderDetailEventHandler _getOrderDetailData() async* {
    var data = await _useCase.getOrderData(orderId!);
    if ((data.isSuccess) && (data.value != null)) {
      yield state.copyWith(
          currentStatus: OrderDetailStatus.viewContent,
          currentOrder: data.value);
      if (data.value!.orderState == DeliveryOrderState.delivered ||
          data.value!.orderState == DeliveryOrderState.canceled) {
        _cancelUpdateTimer();
      }
    } else {
      yield state.copyWith(currentStatus: OrderDetailStatus.error);
    }
  }

  void _startUpdateTimer() async {
    const oneSec = Duration(seconds: 60);
    //Время периодичности автообновления информации о заказе
    if (timerUpdate != null) {
      _cancelUpdateTimer();
    }
    timerUpdate = await Timer.periodic(oneSec, (timer) {
      add(OrderDetailEvent.getOrderDetailData());
    });
  }

  void _cancelUpdateTimer() {
    timerUpdate?.cancel();
  }

  @override
  Future<void> close() {
    _cancelUpdateTimer();
    return super.close();
  }
}
