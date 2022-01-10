
import 'package:toto_mobile/src/core/domain/entities/address.dart';

abstract class DeliveryAddressState {}

class EmptyState extends DeliveryAddressState{

}

class HomeInitial extends DeliveryAddressState {
  final List<AddressDto> loadedAddress;
  HomeInitial({required this.loadedAddress});
}

