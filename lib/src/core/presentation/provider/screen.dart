import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/router.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/addition.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/cities.dart';
import 'package:toto_mobile/src/core/presentation/screens/contacts/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/contacts/contacts.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/delivery.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery_address/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery_address/delivery_address.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/home.dart';
import 'package:toto_mobile/src/core/presentation/screens/login/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/login/login.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/more.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/more_detail.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/order_detail.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_estimation/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_estimation/view/view.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/ordering.dart';
import 'package:toto_mobile/src/core/presentation/screens/orders/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/orders/orders.dart';
import 'package:toto_mobile/src/core/presentation/screens/payment/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/payment/payment.dart';
import 'package:toto_mobile/src/core/presentation/screens/pickup/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/pickup/pickup.dart';
import 'package:toto_mobile/src/core/presentation/screens/second/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/second/second.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/sets.dart';
import 'package:toto_mobile/src/core/presentation/screens/splash/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/splash/splash/start.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/userpage.dart';
import 'package:toto_mobile/src/injection/injection.dart';

class ScreenProvider {
  static RouteInfo home([MainScreen? initialPage]) => RouteInfo(
        id: HomePage.id,
        builder: (_) => BlocProvider<HomeBloc>(
          create: (_) =>
              getIt<HomeBloc>(param1: BlocProvider.of<RouterBloc>(_)),
          child:
              HomePage(initialPage: initialPage ?? MainScreen.infoRestaurants),
        ),
      );

  static RouteInfo delivery(ChooseDeliveryAddressScenario scenario) =>
      RouteInfo(
          id: DeliveryPage.id,
          builder: (_) => BlocProvider<DeliveryBloc>(
                create: (_) => getIt<DeliveryBloc>(),
                child: DeliveryPage(
                  scenario: scenario,
                ),
              ));

  static RouteInfo login() => RouteInfo(
        id: LoginPage.id,
        builder: (_) => BlocProvider<LoginBloc>(
          create: (_) => getIt<LoginBloc>(),
          child: LoginPage(),
        ),
      );

  static RouteInfo tabBarMore() => RouteInfo(
        id: MorePage.id,
        builder: (_) => BlocProvider<MoreBloc>(
          create: (_) => getIt<MoreBloc>(),
          child: MorePage(),
        ),
      );
  static RouteInfo tabBarMoreDetail(String cellType, String slug) => RouteInfo(
        id: MoreDetailPage.id,
        builder: (_) => BlocProvider<MoreDetailBloc>(
          create: (_) => getIt<MoreDetailBloc>(param1: cellType, param2: slug),
          child: MoreDetailPage(),
        ),
      );
  static RouteInfo userpage() => RouteInfo(
        id: UserPage.id,
        builder: (_) => BlocProvider<UserpageBloc>(
          create: (_) => getIt<UserpageBloc>(),
          child: UserPage(),
        ),
      );

  static RouteInfo deliveryAddress() => RouteInfo(
        id: UserPage.id,
        builder: (_) => BlocProvider<DeliveryAddressBloc>(
          create: (_) => getIt<DeliveryAddressBloc>(),
          child: DeliveryAddressPage(),
        ),
      );

  static RouteInfo orders() => RouteInfo(
        id: OrdersPage.id,
        builder: (_) => BlocProvider<OrdersBloc>(
          create: (_) => getIt<OrdersBloc>(),
          child: OrdersPage(),
        ),
      );

  static RouteInfo orderDetail(int orderId) => RouteInfo(
        id: OrderDetailPage.id,
        builder: (_) => BlocProvider<OrderDetailBloc>(
          create: (_) => getIt<OrderDetailBloc>(param1: orderId),
          child: OrderDetailPage(),
        ),
      );

  static RouteInfo pickup() => RouteInfo(
      id: PickUpPage.id,
      builder: (_) => BlocProvider<PickUpBloc>(
            create: (_) => getIt<PickUpBloc>(),
            child: PickUpPage(),
          ));

  static RouteInfo start() => RouteInfo(
        id: StartPage.id,
        builder: (_) => BlocProvider<StartBloc>(
          create: (_) => getIt<StartBloc>(),
          child: StartPage(),
        ),
      );

  static RouteInfo second(IconData arg) => RouteInfo(
        id: SecondPage.id,
        builder: (_) => BlocProvider<SecondBloc>(
          create: (_) => SecondBloc(),
          child: SecondPage(icon: arg),
        ),
      );

  static RouteInfo contacts() => RouteInfo(
        id: ContactsPage.id,
        builder: (_) => BlocProvider<ContactsBloc>(
          create: (_) => getIt<ContactsBloc>(),
          child: ContactsPage(),
        ),
      );
  static RouteInfo sets(String setId, String title, bool visibleButtonAdd) =>
      RouteInfo(
        id: SetsPage.id,
        builder: (_) => BlocProvider<SetsBloc>(
          create: (_) =>
              getIt<SetsBloc>(param1: setId, param2: visibleButtonAdd),
          child: SetsPage(title: title),
        ),
      );

  static RouteInfo orderEstimation(int id) => RouteInfo(
        id: OrderEstimationPage.id,
        type: PageType.bottomSheet,
        builder: (_) => BlocProvider<OrderEstimationBloc>(
          create: (_) => getIt<OrderEstimationBloc>(param1: id),
          child: OrderEstimationPage(),
        ),
      );

  static RouteInfo cities() => RouteInfo(
        id: CitiesPage.id,
        builder: (_) => BlocProvider<CitiesBloc>(
          create: (_) => getIt<CitiesBloc>(),
          child: CitiesPage(),
        ),
      );
  static RouteInfo ordering() => RouteInfo(
        id: OrderingPage.id,
        builder: (_) => BlocProvider<OrderingBloc>(
          create: (_) => getIt<OrderingBloc>(),
          child: OrderingPage(),
        ),
      );
  static RouteInfo addition(String id) => RouteInfo(
        id: AdditionPage.id,
        builder: (_) => BlocProvider<AdditionBloc>(
          create: (_) => getIt<AdditionBloc>(param1: id),
          child: AdditionPage(),
        ),
      );
  static RouteInfo payment() => RouteInfo(
        id: PaymentPage.id,
        builder: (_) => BlocProvider<PaymentBloc>(
          create: (_) => getIt<PaymentBloc>(),
          child: PaymentPage(),
        ),
      );
}

class RouteInfo {
  RouteInfo({
    required this.id,
    this.type = PageType.screen,
    required this.builder,
  });

  final String id;
  final WidgetBuilder builder;
  PageType type;

  @override
  String toString() {
    return 'Route{id: $id, builder: $builder}';
  }
}
