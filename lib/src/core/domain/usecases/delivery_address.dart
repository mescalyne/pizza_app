import 'package:injectable/injectable.dart';

import 'package:toto_mobile/src/core/data/repository/delivery/delivery_address.dart';
import 'package:toto_mobile/src/core/domain/entities/address.dart';
import 'package:toto_mobile/src/core/domain/entities/delivery_address.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class CreateDeliveryAddressUseCase {
  Future<Result<AddressDto>> createDeliveryAddress(DeliveryDto address);
}

abstract class GetAllDeliveryAddressesUseCase {
  Future<Result<List<AddressDto>>> call();
}

abstract class WatchDeliveryAddressesUseCase {
  Stream<List<AddressDto>> deliveryAddresses();
}

abstract class ChangeDeliveryAddressesUseCase {
  void changeDeliveryAddresses(List<AddressDto> deliveryAddresses);
}

abstract class DeleteDeliveryAddressUseCase {
  Future<void> call(int id);
}

@Injectable(as: DeleteDeliveryAddressUseCase)
class DeleteDeliveryAddressUseCaseImpl extends DeleteDeliveryAddressUseCase {
  final DeliveryAddressRepository repository;

  DeleteDeliveryAddressUseCaseImpl(this.repository);

  @override
  Future<void> call(int id) {
    return repository.deleteDeliveryAddress(id);
  }
}

@Injectable(as: ChangeDeliveryAddressesUseCase)
class ChangeDeliveryAddressesUseCaseImpl
    extends ChangeDeliveryAddressesUseCase {
  final DeliveryWatchableRepository _deliveryWatchableRepository;
  ChangeDeliveryAddressesUseCaseImpl(
    this._deliveryWatchableRepository,
  );
  @override
  void changeDeliveryAddresses(List<AddressDto> deliveryAddresses) {
    _deliveryWatchableRepository.setDeliveryAddresses(deliveryAddresses);
  }
}

@Injectable(as: WatchDeliveryAddressesUseCase)
class WatchDeliveryAddressesUseCaseImpl extends WatchDeliveryAddressesUseCase {
  final DeliveryWatchableRepository _deliveryWatchableRepository;
  WatchDeliveryAddressesUseCaseImpl(
    this._deliveryWatchableRepository,
  );

  @override
  Stream<List<AddressDto>> deliveryAddresses() {
    return _deliveryWatchableRepository.deliveryAddressesController;
  }
}

@Injectable(as: CreateDeliveryAddressUseCase)
class CreateDeliveryAddressUseCaseImpl extends CreateDeliveryAddressUseCase {
  final DeliveryAddressRepository _deliveryAddressRepository;
  CreateDeliveryAddressUseCaseImpl(
    this._deliveryAddressRepository,
  );

  @override
  Future<Result<AddressDto>> createDeliveryAddress(DeliveryDto address) async {
    return _deliveryAddressRepository.createDeliveryAddress(address);
  }
}

@Injectable(as: GetAllDeliveryAddressesUseCase)
class GetAllDeliveryAddressesUseCaseImpl
    extends GetAllDeliveryAddressesUseCase {
  final DeliveryAddressRepository _deliveryAddressRepository;
  GetAllDeliveryAddressesUseCaseImpl(
    this._deliveryAddressRepository,
  );
  @override
  Future<Result<List<AddressDto>>> call() {
    return _deliveryAddressRepository.getAllDeliveryAddresses();
  }
}
