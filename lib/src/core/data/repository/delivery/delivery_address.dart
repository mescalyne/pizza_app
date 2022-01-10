import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';

import 'package:toto_mobile/src/core/data/network/service/delivery_address.dart';
import 'package:toto_mobile/src/core/domain/entities/address.dart';
import 'package:toto_mobile/src/core/data/adapters/address.dart';
import 'package:toto_mobile/src/core/domain/entities/delivery_address.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class DeliveryAddressRepository {
  Future<Result<List<AddressDto>>> getAllDeliveryAddresses();
  Future<Result<AddressDto>> createDeliveryAddress(DeliveryDto address);
  Future<void> deleteDeliveryAddress(int id);
}

@Singleton()
class DeliveryWatchableRepository {
  final _deliveryAddressesController = BehaviorSubject<List<AddressDto>>();
  Stream<List<AddressDto>> get deliveryAddressesController =>
      _deliveryAddressesController.stream;

  void setDeliveryAddresses(List<AddressDto> restaurants) {
    _deliveryAddressesController.add(restaurants);
  }
}

@Injectable(as: DeliveryAddressRepository)
class DeliveryAddressRepositoryImpl extends DeliveryAddressRepository {
  final DeliveryAddressApi _deliveryAddressApi;

  DeliveryAddressRepositoryImpl(this._deliveryAddressApi);
  @override
  Future<Result<AddressDto>> createDeliveryAddress(DeliveryDto address) async {
    try {
      final result = await _deliveryAddressApi.createDeliveryAddress(address);

      if (result != null) {
        return Result.success(result.createDeliveryAddress!.toAddressDto);
      }
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<List<AddressDto>>> getAllDeliveryAddresses() async {
    try {
      final deliveryAddresses =
          await _deliveryAddressApi.getAllDeliveryAddresses();
      if (deliveryAddresses != null) {
        return Result.success(deliveryAddresses.getAllDeliveryAddresses!
            .map((deliveryAddress) => deliveryAddress.toAddressDto)
            .toList());
      }
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<void> deleteDeliveryAddress(int id) async {
    await _deliveryAddressApi.deleteDeliveryAddress(id);
  }
}
