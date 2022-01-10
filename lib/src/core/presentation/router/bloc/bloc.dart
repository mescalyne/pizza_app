import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/state.dart';

import '../../provider/screen.dart';
import 'event.dart';

typedef RouteEventHandler = Stream<List<RouteInfo>>;

abstract class RouterEventSink {
  void add(RouterEvent event);
}

@Singleton(as: RouterEventSink)
class RouterBloc extends Bloc<RouterEvent, List<RouteInfo>>
    implements RouterEventSink {
  final _routerToHome = BehaviorSubject<RouterToHome>();

  RouterBloc() : super([ScreenProvider.start()]);

  Stream<RouterToHome> get routerToHome => _routerToHome.stream;

  Function(RouterToHome) get changeRouterToHome => _routerToHome.sink.add;

  @override
  Stream<List<RouteInfo>> mapEventToState(RouterEvent event) => event.when(
        toPickUp: _onRoutePickUp,
        toDelivery: _toRouterDelivery,
        toHome: _onRouteHome,
        pop: _onPop,
        toSecond: _onRouteToSecond,
        toLogin: _onRouteToLogin,
        toTabBarMore: _onRouteToTabBarMore,
        toTabBarMoreDetail: _onRouteToTabBarMoreDetail,
        toUserpage: _onRouteToUserpage,
        toDeliveryAddressPage: _onRouteToDeliveryAddressPage,
        toOrdersPage: _onRouteToOrdersPage,
        toOrderDetailPage: _onRouteToOrderDetailPage,
        toContactsPage: _onRouteToContactsPage,
        toSetsPage: _onRouteToSetsPage,
        toOrderEstimation: _onRouteToOrderEstimation,
        toCitiesPage: _onRouteToCitiesPage,
        toOrdering: _onRouteToOrdering,
        toAddition: _onRouteToAddition,
        orderDetailToHomeMenu: _orderDetailToHomeMenu,
        toPayment: _onRouteToPayment,
        paymentToHomeMenu: _paymentToHomeMenu,
        toHomeMenu: _toHomeMenu,
      );

  RouteEventHandler _onPop() async* {
    yield [...state..removeLast()];
  }

  RouteEventHandler _toRouterDelivery(
      ChooseDeliveryAddressScenario scenario) async* {
    yield [...state, ScreenProvider.delivery(scenario)];
  }

  RouteEventHandler _onRoutePickUp() async* {
    yield [...state, ScreenProvider.pickup()];
  }

  RouteEventHandler _onRouteToLogin() async* {
    yield [...state, ScreenProvider.login()];
  }

  RouteEventHandler _onRouteToTabBarMore() async* {
    yield [...state, ScreenProvider.tabBarMore()];
  }

  RouteEventHandler _onRouteToTabBarMoreDetail(
      String cellType, String slug) async* {
    yield [...state, ScreenProvider.tabBarMoreDetail(cellType, slug)];
  }

  RouteEventHandler _onRouteHome([MainScreen? initialPage]) async* {
    yield [
      ...state,
      ScreenProvider.home(initialPage ?? MainScreen.infoRestaurants)
    ];
  }

  RouteEventHandler _onRouteToSecond(IconData arg) async* {
    yield [...state, ScreenProvider.second(arg)];
  }

  RouteEventHandler _onRouteToUserpage() async* {
    yield [...state, ScreenProvider.userpage()];
  }

  RouteEventHandler _onRouteToDeliveryAddressPage() async* {
    yield [...state, ScreenProvider.deliveryAddress()];
  }

  RouteEventHandler _onRouteToOrdersPage() async* {
    yield [...state, ScreenProvider.orders()];
  }

  RouteEventHandler _onRouteToOrderDetailPage(int orderId) async* {
    yield [...state, ScreenProvider.orderDetail(orderId)];
  }

  RouteEventHandler _onRouteToContactsPage() async* {
    yield [...state, ScreenProvider.contacts()];
  }

  RouteEventHandler _onRouteToSetsPage(
      String setId, String title, bool visibleButtonAdd) async* {
    yield [...state, ScreenProvider.sets(setId, title, visibleButtonAdd)];
  }

  RouteEventHandler _onRouteToOrderEstimation(int id) async* {
    yield [...state, ScreenProvider.orderEstimation(id)];
  }

  RouteEventHandler _onRouteToCitiesPage() async* {
    yield [...state, ScreenProvider.cities()];
  }

  RouteEventHandler _onRouteToOrdering() async* {
    yield [...state, ScreenProvider.ordering()];
  }

  RouteEventHandler _onRouteToAddition(String id) async* {
    yield [...state, ScreenProvider.addition(id)];
  }

  RouteEventHandler _orderDetailToHomeMenu() async* {
    yield [...state..removeLast()];
    _routerToHome.add(RouterToHome.toBucket);
  }

  RouteEventHandler _toHomeMenu() async* {
    _routerToHome.add(RouterToHome.toMenu);
  }

  RouteEventHandler _paymentToHomeMenu() async* {
    yield [...state..removeLast()];
    yield [...state..removeLast()];
    _routerToHome.add(RouterToHome.toMenu);
  }

  RouteEventHandler _onRouteToPayment() async* {
    yield [...state, ScreenProvider.payment()];
  }

  @override
  Future<void> close() {
    _routerToHome.close();
    return super.close();
  }
}

enum RouterToHome {
  toMenu,
  toBucket,
}
