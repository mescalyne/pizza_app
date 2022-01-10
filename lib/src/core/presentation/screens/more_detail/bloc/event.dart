import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/list_item.dart';

part 'event.freezed.dart';

@freezed
class MoreDetailEvent with _$MoreDetailEvent {
  const factory MoreDetailEvent.initialization() = Initialization;
  const factory MoreDetailEvent.errorLoading() = ErrorLoading;
  const factory MoreDetailEvent.cellPressed(ListItem cellData) = OnCellPressed;
  const factory MoreDetailEvent.buttonPressed() = OnButtonPressed;
}