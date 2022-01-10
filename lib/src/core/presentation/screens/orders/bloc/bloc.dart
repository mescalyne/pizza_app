import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/domain/usecases/delivery.dart';
import 'package:toto_mobile/src/core/domain/usecases/profile/current_user.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/orders/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/orders/bloc/state.dart';

typedef OrdersEventHandler = Stream<OrdersState>;

@Injectable()
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final RouterEventSink _routerEventSink;
  final DeliveryUseCase _useCase;
  final CurrentUserUseCase _authUseCase;
  StreamSubscription? _authWatcher;

  OrdersBloc(this._routerEventSink, this._useCase, this._authUseCase)
      : super(OrdersState()) {
    add(OrdersEvent.onLoaded());
  }

  @override
  Stream<OrdersState> mapEventToState(OrdersEvent event) => event.when(
        onLoaded: _onLoaded,
        onToEstimationOrderStart: _onToEstimationOrderStart,
        onToOrderDetailPage: _onToOrderDetailPage,
        errorLoading: _onErrorLoading,
        openMenu: _onOpenMenu,
        nextPage: _onNextPage,
        refresh: _onRefresh,
        openAuthorization: _onOpenAuthorization,
        onLoadWithGuest: _onLoadWithGuest,
      );

  OrdersEventHandler _onLoaded() async* {
    yield state.copyWith(status: DataStatus.loading);

    _authWatcher = _authUseCase.watch().listen((event) {
      add(OnLoadWithGuest(event));
    });
  }

  OrdersEventHandler _onToEstimationOrderStart(int id) async* {
    _routerEventSink.add(RouterEvent.toOrderEstimation(id));
  }

  OrdersEventHandler _onToOrderDetailPage(int orderId) async* {
    _routerEventSink.add(RouterEvent.toOrderDetailPage(orderId));
  }

  OrdersEventHandler _onErrorLoading() async* {
    _routerEventSink.add(RouterEvent.pop());
  }

  OrdersEventHandler _onOpenMenu() async* {
    _routerEventSink.add(RouterEvent.toHomeMenu());
  }

  OrdersEventHandler _onOpenAuthorization() async* {
    _routerEventSink.add(RouterEvent.toLogin());
  }

  OrdersEventHandler _onNextPage() async* {
    if (_useCase.nextPageExist()) {
      yield* getOrderData();
    }
  }

  OrdersEventHandler _onRefresh() async* {
    _useCase.refreshPage();
    yield* getOrderData();
  }

  OrdersEventHandler _onLoadWithGuest(bool? isGuest) async* {
    if (isGuest == false) {
      _useCase.refreshPage();
      yield* getOrderData();
    } else {
      yield state.copyWith(status: DataStatus.unauthorized);
    }
  }

  OrdersEventHandler getOrderData() async* {
    var data = await _useCase.getOrderData();
    if ((data.isSuccess) && (data.value != null)) {
      yield state.copyWith(status: DataStatus.success, orderList: data.value);
      return;
    }
    if ((data.isFailure) && (data.failureValue == NetworkResult.error)) {
      yield state.copyWith(status: DataStatus.error);
      return;
    } else {
      yield state.copyWith(status: DataStatus.connectionError);
    }
  }

  @override
  Future<void> close() {
    _authWatcher?.cancel();
    return super.close();
  }
}
