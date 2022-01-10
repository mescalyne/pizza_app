import 'package:toto_mobile/src/core/presentation/entities/delivery.dart';

class CartFiltersInputDto {
  PaymentStatusDto? paymentStatus;
  OrderStatusDto? orderStatus;
  bool notDone;

  CartFiltersInputDto(
      {this.paymentStatus, this.orderStatus, required this.notDone});
}

enum PaymentStatusDto { nullValue, newValue, payed, refunded }

enum OrderStatusDto {
  nullCart,
  newCart,
  awaiting,
  onTheWay,
  closed,
  canceled,
  delivered,
  notConfirmed,
  inProgress,
  done,
}

extension OrderStatusToDeliveryState on OrderStatusDto {
  DeliveryOrderState get toDeliveryStateType {
    switch (this) {
      case OrderStatusDto.awaiting:
        return DeliveryOrderState.adopted;
      case OrderStatusDto.newCart:
        return DeliveryOrderState.adopted;
      case OrderStatusDto.inProgress:
        return DeliveryOrderState.prepare;
      case OrderStatusDto.onTheWay:
        return DeliveryOrderState.given;
      case OrderStatusDto.delivered:
        return DeliveryOrderState.delivered;
      case OrderStatusDto.done:
        return DeliveryOrderState.delivered;
      default:
        return DeliveryOrderState.canceled;
    }
  }
}
