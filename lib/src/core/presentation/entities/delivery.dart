class DeliveryProgressData {
  int orderID;
  String? address;
  DateTime? orderTime;
  DeliveryOrderState orderState;
  int? orderPrice;

  DeliveryProgressData(
      {required this.orderID,
      required this.address,
      required this.orderTime,
      required this.orderState,
      required this.orderPrice});

  DeliveryProgressData copyWith({
    int? orderID,
    String? address,
    DateTime? orderTime,
    DeliveryOrderState? orderState,
    int? orderPrice,
  }) {
    return DeliveryProgressData(
      orderID: orderID ?? this.orderID,
      address: address ?? this.address,
      orderTime: orderTime ?? this.orderTime,
      orderState: this.orderState,
      orderPrice: orderPrice ?? this.orderPrice,
    );
  }
}

enum DeliveryOrderState { adopted, prepare, given, delivered, canceled }
enum OrderProgressStatus { inProgress, delivered, cancelled }
