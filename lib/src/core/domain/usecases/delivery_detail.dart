import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/repository/delivery/delivery_detail.dart';
import 'package:toto_mobile/src/core/domain/entities/cart_filters_input.dart';
import 'package:toto_mobile/src/core/presentation/entities/delivery_detail.dart';
import 'package:toto_mobile/src/extensions/DateTime.dart';
import 'package:toto_mobile/src/extensions/String.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class DeliveryDetailUseCase {
  Future<Result<DeliveryDetailData>> getOrderData(int orderId);
}

@Injectable(as: DeliveryDetailUseCase)
class DeliveryUseCaseImpl extends DeliveryDetailUseCase {
  final DeliveryDetailRepository _repository;

  DeliveryUseCaseImpl(this._repository);

  @override
  Future<Result<DeliveryDetailData>> getOrderData(int id) async {
    var cartData = await _repository.getCart(id);
    if ((cartData.isSuccess) && (cartData.value != null)) {
      var cart = cartData.value!;
      List<DeliveryDetailItem> items = [];
      for (var item in cart.items!) {
        items.add(DeliveryDetailItem(
          productId: item.productId,
          name: item.name,
          sum: item.sum,
          code: item.code,
          productDto: item.product,
          amount: item.amount,
          weight: item.product.weight!,
          imageUrl: item.product.image,
        ));
      }
      var deliveryDetailData = DeliveryDetailData(
        orderID: cart.id,
        address: StringExtension.addressToString(cart.deliveryAddress),
        createdTime:
            DateTimeExtension.stringToDateTime(cart.orderInfo?.createdTime),
        deliveryDate:
            DateTimeExtension.stringToDateTime(cart.orderInfo?.deliveryDate),
        actualTime:
            DateTimeExtension.stringToDateTime(cart.orderInfo?.actualTime),
        orderState: cart.orderStatus.toDeliveryStateType,
        orderPrice: int.parse(cart.totalPayment),
        name: cart.customerName,
        phone: cart.customerPhone,
        cancelCause: cart.orderInfo?.cancelCause,
        cancelComment: cart.orderInfo?.cancelComment,
        items: items,
      );
      return Result.success(deliveryDetailData);
    } else {
      return Result.failure(cartData.failure);
    }
  }
}
