import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class DeliveryAddressEvent with _$DeliveryAddressEvent {
  const factory DeliveryAddressEvent.onLoaded() = OnLoaded;
  const factory DeliveryAddressEvent.onDeleteDeliveryAddress(id) = OnDeleteDeliveryAddress;
}
