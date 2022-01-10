
import 'package:toto_mobile/src/core/presentation/entities/delivery.dart';

enum OrdersStatus {
  loadedData,
  viewOrders,
  estimationOrderOpen,
  estimationOrder,
  estimationOrderClose,
}

class OrderListItem {
  final String id;
  final OrderProgressStatus orderProgressStatus;
  final int price;
  final String date;
  final String time;
  final String address;

  OrderListItem({
    required this.id,
    required this.orderProgressStatus,
    required this.price,
    required this.date,
    required this.time,
    required this.address,
  });
}