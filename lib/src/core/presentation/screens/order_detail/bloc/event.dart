import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';

part 'event.freezed.dart';

@freezed
class OrderDetailEvent with _$OrderDetailEvent {
  const factory OrderDetailEvent.openPage() = OpenPage;
  const factory OrderDetailEvent.errorLoading() = ErrorLoading;
  const factory OrderDetailEvent.onEstimationOrder(int orderId) =
      OnEstimationOrder;
  const factory OrderDetailEvent.getOrderDetailData() = GetOrderDetailData;
  const factory OrderDetailEvent.onRepeatOrder() = OnRepeatOrder;
  const factory OrderDetailEvent.onRouteToCartItem(ProductDto productDto) =
      OnRouteToCartItem;
}
