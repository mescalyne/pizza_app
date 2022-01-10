import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class OrderEstimationEvent with _$OrderEstimationEvent {
  const factory OrderEstimationEvent.initialization() = Initialization;

  const factory OrderEstimationEvent.errorLoading() = ErrorLoading;

  const factory OrderEstimationEvent.onEstimationOrderSend(String? comment, Set<int> ids, int estimate) =
      OnEstimationOrderSend;

}
