
import 'package:toto_mobile/src/core/presentation/entities/delivery.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/state.dart';

class OrdersState {
  final DataStatus status;
  final List<DeliveryProgressData> orderList;

  OrdersState({
    this.status = DataStatus.init,
    this.orderList = const [],
  });

  OrdersState copyWith({
    DataStatus? status,
    List<DeliveryProgressData>? orderList,
  }) {
    return OrdersState(
      status: status ?? this.status,
      orderList: orderList ?? this.orderList,
    );
  }
}
