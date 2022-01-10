

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toto_mobile/src/core/presentation/entities/payment_info.dart';

part 'event.freezed.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.loadBucket() = LoadPaymentEvent;
  const factory PaymentEvent.cancelOrder() = OnCancelOrder;
  const factory PaymentEvent.payment(PaymentTypeContent paymentType, int usedPoints) = OnPayForOrder;
  const factory PaymentEvent.showResult(bool isSuccess) = OnShowResult;
}