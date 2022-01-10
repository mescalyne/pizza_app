import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/repository/delivery/delivery_progress.dart';
import 'package:toto_mobile/src/core/domain/entities/cart_filters_input.dart';
import 'package:toto_mobile/src/core/presentation/entities/delivery.dart';
import 'package:toto_mobile/src/extensions/DateTime.dart';
import 'package:toto_mobile/src/extensions/String.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class DeliveryUseCase {
  Future<Result<List<DeliveryProgressData>>> getOrderData();

  bool nextPageExist();

  void refreshPage();
}

@Injectable(as: DeliveryUseCase)
class DeliveryUseCaseImpl extends DeliveryUseCase {
  final DeliveryProgressRepository _repository;
  final int _pageSize = 30;
  int _page = 1;
  int? _lastPage;
  var _returnData = <DeliveryProgressData>[];

  DeliveryUseCaseImpl(this._repository);

  @override
  Future<Result<List<DeliveryProgressData>>> getOrderData() async {
    var filter = CartFiltersInputDto(notDone: true);
    var repData = await _repository.getCarts(_page, _pageSize, filter);
    if ((repData.isSuccess) && (repData.value != null)) {
      _lastPage = repData.value?.paginatorInfo?.lastPage;
      for (var item in repData.value!.carts) {
        var deliveryData = DeliveryProgressData(
            orderID: item.id,
            address: StringExtension.addressToString(item.deliveryAddress),
            orderTime:
                DateTimeExtension.stringToDateTime(item.orderInfo?.createdTime),
            orderState: item.orderStatus.toDeliveryStateType,
            orderPrice: int.parse(item.totalPayment));
        _returnData.add(deliveryData);
      }
      return Result.success(_returnData);
    } else {
      return Result.failure(repData.failure);
    }
  }

  @override
  bool nextPageExist() {
    if (_lastPage != null && _page < _lastPage!) {
      _page = _page + 1;
      return true;
    }
    return false;
  }

  @override
  void refreshPage() {
    _page = 1;
    _returnData = [];
  }
}
