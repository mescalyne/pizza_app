import 'package:toto_mobile/src/core/presentation/entities/payment_info.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/state.dart';

class PaymentState {
  final PaymentStatus status;
  final int? bonusCount;
  final PaymentInfo? paymentInfo;
  final List<PaymentType> possiblePaymentTypes;
  final String? urlPath;

  PaymentState({
    this.status = PaymentStatus.init,
    this.bonusCount,
    this.paymentInfo,
    this.possiblePaymentTypes = const [],
    this.urlPath,
  });

  PaymentState copyWith({
    PaymentStatus? status,
    int? bonusCount,
    PaymentInfo? paymentInfo,
    List<PaymentType>? possiblePaymentTypes,
    String? urlPath,
}) {
    return PaymentState(
      status: status ?? this.status,
      bonusCount: bonusCount ?? this.bonusCount,
      paymentInfo: paymentInfo ?? this.paymentInfo,
      possiblePaymentTypes: possiblePaymentTypes ?? this.possiblePaymentTypes,
      urlPath: urlPath ?? this.urlPath,
    );
  }
}

enum PaymentStatus  { init, loading, success, error, connectionError, webView, resultSuccess, resultFailure, kitchenSuccess }