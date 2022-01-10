import 'package:toto_mobile/src/core/domain/entities/address.dart';
import 'package:toto_mobile/src/core/domain/entities/delivery_address.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class DeliveryState {
  final SlidingPanelStatus? status;
  final DeliveryDto? currentUserAddress;
  final List<AddressDto> usedDeliveryAddresses;
  final List<SuggestItem> suggestAddresses;
  final DeliveryDto suggestDeliveryAddress;
  final int usedDeliveryAddressIndex;
  final DeliveryAddressStatus deliveryAddressState;

  DeliveryState({
    this.deliveryAddressState = DeliveryAddressStatus.current,
    this.usedDeliveryAddressIndex = 0,
    this.suggestDeliveryAddress = const DeliveryDto(
      apartment: '',
      cityName: 'Город',
      comment: '',
      home: 'Дом',
      housing: '',
      street: 'Улица',
      latitude: 56,
      longitude: 46,
    ),
    this.currentUserAddress,
    this.suggestAddresses = const [],
    this.usedDeliveryAddresses = const [],
    this.status = SlidingPanelStatus.info,
  });

  DeliveryState copyWith({
    DeliveryAddressStatus? deliveryAddressState,
    int? usedDeliveryAddressIndex,
    DeliveryDto? suggestDeliveryAddress,
    List<AddressDto>? usedDeliveryAddresses,
    SlidingPanelStatus? status,
    DeliveryDto? currentUserAddress,
    List<SuggestItem>? suggestAddresses,
  }) {
    return DeliveryState(
      deliveryAddressState: deliveryAddressState ?? this.deliveryAddressState,
      usedDeliveryAddressIndex:
          usedDeliveryAddressIndex ?? this.usedDeliveryAddressIndex,
      suggestDeliveryAddress:
          suggestDeliveryAddress ?? this.suggestDeliveryAddress,
      currentUserAddress: currentUserAddress ?? this.currentUserAddress,
      suggestAddresses: suggestAddresses ?? this.suggestAddresses,
      usedDeliveryAddresses:
          usedDeliveryAddresses ?? this.usedDeliveryAddresses,
      status: status ?? this.status,
    );
  }
}

enum SlidingPanelStatus { info, edit, find, notFound, usedAddresses }

enum PanelStatus { panelOpened, panelClosed }

enum ChooseDeliveryAddressScenario { pop, navigateToHomeMenu }

enum DeliveryAddressStatus {
  initial,
  suggestionUpdated,
  search,
  current,
  updated,
}

enum DeliveryStatus {
  initialState,
  myLocationState,
  chooseDeliveryAddressState,
  deliveryAddressNotFound,
  inputCityState,
  inputAdditionalInfoState
}
