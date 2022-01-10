import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.onLoaded() = OnLoaded;
  const factory OrdersEvent.errorLoading() = ErrorLoading;
  const factory OrdersEvent.openMenu() = OnOpenMenu;
  const factory OrdersEvent.openAuthorization() = OnOpenAuthorization;
  const factory OrdersEvent.nextPage() = OnNextPage;
  const factory OrdersEvent.refresh() = OnRefresh;
  const factory OrdersEvent.onToEstimationOrderStart(int id) =
      OnToEstimationOrderStart;
  const factory OrdersEvent.onToOrderDetailPage(int orderId) =
      OnToOrderDetailPage;
  const factory OrdersEvent.onLoadWithGuest(bool? isGuest) = OnLoadWithGuest;
}
