import 'package:toto_mobile/src/core/presentation/entities/delivery_detail.dart';

class OrderDetailState {
  OrderDetailStatus currentStatus;
  int? orderId;
  DeliveryDetailData currentOrder;

  OrderDetailState({
    this.currentStatus = OrderDetailStatus.loadedData,
    required this.orderId,
    required this.currentOrder,
  });

  OrderDetailState copyWith({
    OrderDetailStatus? currentStatus,
    int? orderId,
    DeliveryDetailData? currentOrder,
  }) {
    return OrderDetailState(
      currentStatus: currentStatus ?? this.currentStatus,
      orderId: orderId ?? this.orderId,
      currentOrder: currentOrder ?? this.currentOrder,
    );
  }
}

enum OrderDetailStatus {
  loadedData,
  closeModal,
  viewContent,
  error,
}
