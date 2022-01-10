import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entities/delivery_address.dart';
import 'state.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

part 'event.freezed.dart';

@freezed
class DeliveryEvent with _$DeliveryEvent {
  const factory DeliveryEvent.changeSLidingPanelStatus(
    SlidingPanelStatus slidingPanelStatus,
  ) = ChangeSlidingPanelStatus;
  const factory DeliveryEvent.changeDeliveryAddress(DeliveryDto address) =
      ChangeDeliveryAddress;
      const factory DeliveryEvent.getPolygons() =
      GetPolygons;
  const factory DeliveryEvent.getUsedDeliveryAddresses() =
      GetUsedDeliveryAddresses;
  const factory DeliveryEvent.getUserDeliveryAddress() = GetUserDeliveryAddress;
  
  const factory DeliveryEvent.getAllRestaurants() = GetAllRestaurants;
  
  const factory DeliveryEvent.onGetUserLocationIconButtonPressed() =
      OnGetUserLocationIconButtonPressed;
  const factory DeliveryEvent.onUsedDeliveryAddressChooseButtonPressed(DeliveryDto usedAddress, Function callback) =
      OnUsedDeliveryAddressChooseButtonPressed;
  const factory DeliveryEvent.onAddNewDeliveryAddressButtonPressed(
      DeliveryDto newAddress, Function callback) = OnAddNewDeliveryAddressButtonPressed;
  const factory DeliveryEvent.showAddressesByQuery(
      List<SuggestItem> suggestionAddresses) = ShowAddressesByQuery;
  const factory DeliveryEvent.onFoundByQueryAddressTapped(
      SuggestItem foundByQueryAddress) = OnFoundByQueryAddressTapped;
      const factory DeliveryEvent.selectUsedDeliveryAddress(
      int usedDeliveryAddressIndex) = SelectUsedDeliveryAddress;
}
