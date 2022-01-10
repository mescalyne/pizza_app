import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'list_item.dart';
part 'event.freezed.dart';

@freezed
class MoreEvent with _$MoreEvent {
  const factory MoreEvent.initialization() = Initialization;
  const factory MoreEvent.cellPressed(MoreCellItem cellData) = OnCellPressed;
  const factory MoreEvent.onLoadWithGuest(bool? isGuest) = OnLoadWithGuest;
}
