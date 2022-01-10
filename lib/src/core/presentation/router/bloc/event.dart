import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/state.dart';

part 'event.freezed.dart';

@freezed
class RouterEvent with _$RouterEvent {
  const factory RouterEvent.pop() = OnPop;
  const factory RouterEvent.toSecond(IconData sampleArg) = ToSecond;
  const factory RouterEvent.toHome([MainScreen? initialPage]) = ToHome;
  const factory RouterEvent.toDelivery(ChooseDeliveryAddressScenario scenario) =
      ToDelivery;
  const factory RouterEvent.toPickUp() = ToPickUp;
  const factory RouterEvent.toLogin() = ToLogin;
  const factory RouterEvent.toTabBarMore() = ToTabBarMore;
  const factory RouterEvent.toTabBarMoreDetail(String cellName, String slug) =
      ToTabBarMoreDetail;
  const factory RouterEvent.toUserpage() = ToUserpage;
  const factory RouterEvent.toDeliveryAddressPage() = ToDeliveryAddressPage;
  const factory RouterEvent.toOrdersPage() = ToOrdersPage;
  const factory RouterEvent.toOrderDetailPage(int orderId) = ToOrderDetailPage;
  const factory RouterEvent.toContactsPage() = ToContactsPage;
  const factory RouterEvent.toSetsPage(
      String setId, String title, bool visibleButtonAdd) = ToSetsPage;
  const factory RouterEvent.toOrderEstimation(int id) = ToOrderEstimation;
  const factory RouterEvent.toCitiesPage() = ToCitiesPage;
  const factory RouterEvent.toOrdering() = ToOrdering;
  const factory RouterEvent.toAddition(String id) = ToAddition;
  const factory RouterEvent.orderDetailToHomeMenu() = OrderDetailToHomeMenu;
  const factory RouterEvent.paymentToHomeMenu() = PaymentToHomeMenu;
  const factory RouterEvent.toPayment() = ToPayment;
  const factory RouterEvent.toHomeMenu() = ToHomeMenu;
}
