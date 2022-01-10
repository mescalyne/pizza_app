import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class OrderingEvent with _$OrderingEvent {
  const factory OrderingEvent.init() = Init;
  const factory OrderingEvent.errorLoaded() = ErrorLoaded;
  const factory OrderingEvent.openAuthorization() = OnOpenAuthorization;
  const factory OrderingEvent.onLoadWithGuest(bool? isGuest) = OnLoadWithGuest;
  const factory OrderingEvent.onButtonPayment() = OnButtonPayment;
  const factory OrderingEvent.onSendComment(String comment) = OnSendComment;
  const factory OrderingEvent.onButtonCancel() = OnButtonCancel;
  const factory OrderingEvent.onOpenTimeModal() = OnOpenTimeModal;
  const factory OrderingEvent.onChangeDate(int index) = OnChangeDate;
  const factory OrderingEvent.onSendChangedDate() = OnSendChangedDate;
  const factory OrderingEvent.onChangeCustomer(String text, String phone) =
      OnChangeCustomer;
  const factory OrderingEvent.onChangePersonCount(int count) =
      OnChangePersonCount;
}
