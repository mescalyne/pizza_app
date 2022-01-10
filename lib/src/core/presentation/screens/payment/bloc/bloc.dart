import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/domain/usecases/payment.dart';
import 'package:toto_mobile/src/core/presentation/entities/payment_info.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/payment/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/payment/bloc/state.dart';

typedef PaymentEventHandler = Stream<PaymentState>;

@Injectable()
class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final RouterEventSink _routerEventSink;
  final PaymentUseCase _useCase;

  PaymentBloc(this._routerEventSink, this._useCase) : super(PaymentState()) {
    add(LoadPaymentEvent());
  }

  @override
  PaymentEventHandler mapEventToState(PaymentEvent event) => event.when(
        loadBucket: _onLoad,
        cancelOrder: _cancelOrder,
        payment: _payForOrder,
        showResult: _showResult,
      );

  PaymentEventHandler _onLoad() async* {
    yield state.copyWith(status: PaymentStatus.loading);

    var bonuses = await _useCase.getBonusCount();
    var paymentInfo = await _useCase.getPaymentData();

    if (paymentInfo.isSuccess && paymentInfo.value != null) {
      yield state.copyWith(
          status: PaymentStatus.success,
          bonusCount: bonuses,
          paymentInfo: paymentInfo.value);
    } else {
      yield state.copyWith(
          status: PaymentStatus.error);
    }
  }

  PaymentEventHandler _showResult(bool isSuccess) async* {
    yield state.copyWith(status: isSuccess ? PaymentStatus.resultSuccess : PaymentStatus.resultFailure);
  }

  PaymentEventHandler _cancelOrder() async* {
    _routerEventSink.add(RouterEvent.paymentToHomeMenu());
  }

  PaymentEventHandler _payForOrder(
      PaymentTypeContent paymentType, int usedPoints) async* {
    yield state.copyWith(status: PaymentStatus.loading);
    var url = await _useCase.pay(paymentType, usedPoints);
    print(url);
    if (url.isSuccess) {
      if (paymentType.type == PaymentType.cart) {
        yield state.copyWith(status: PaymentStatus.webView, urlPath: url.value!);
      } else {
        yield state.copyWith(status: PaymentStatus.kitchenSuccess);
      }
    } else {
      yield state.copyWith(status: PaymentStatus.error);
    }
  }
}
