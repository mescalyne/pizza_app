import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/domain/usecases/feedback.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_estimation/bloc/data_source.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_estimation/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_estimation/bloc/state.dart';

typedef OrderEstimationEventHandler = Stream<OrderEstimationState>;

@Injectable()
class OrderEstimationBloc
    extends Bloc<OrderEstimationEvent, OrderEstimationState> {
  final RouterEventSink _routerEventSink;
  final FeedbackUseCase _useCase;
  final int? orderId;

  OrderEstimationBloc(
      @factoryParam this.orderId, this._routerEventSink, this._useCase)
      : super(OrderEstimationState()) {
    add(OrderEstimationEvent.initialization());
  }

  @override
  OrderEstimationEventHandler mapEventToState(OrderEstimationEvent event) =>
      event.when(
        initialization: _initialization,
        errorLoading: _onErrorLoading,
        onEstimationOrderSend: _onEstimationOrderSend,
      );

  OrderEstimationEventHandler _initialization() async* {
    yield state.copyWith(status: DataStatus.loading);

    var data = await _useCase.getFeedbackOptions();

    if ((data.isSuccess) && (data.value != null)) {
      var dataSource = OrderEstimationDataSource();
      var checkBoxData = dataSource.configViewData(data.value!);
      yield state.copyWith(status: DataStatus.success, items: checkBoxData);
    } else {
      yield state.copyWith(status: DataStatus.error);
    }
  }

  OrderEstimationEventHandler _onErrorLoading() async* {
    _routerEventSink.add(RouterEvent.pop());
  }

  OrderEstimationEventHandler _onEstimationOrderSend(
      String? comment, Set<int> ids, int estimate) async* {
    if (orderId != null) {
      var sendResult =
          await _useCase.sendFeedback(comment, ids, estimate, orderId!);
      if (sendResult) {
        _routerEventSink.add(RouterEvent.pop());
      } else {
        yield state.copyWith(status: DataStatus.error);
      }
    } else {
      yield state.copyWith(status: DataStatus.error);
    }
  }
}
