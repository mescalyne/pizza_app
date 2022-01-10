import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/state.dart';

import 'check_box_item.dart';

class OrderEstimationState {
  final DataStatus status;
  final List<CheckBoxItem> items;

  OrderEstimationState({
    this.status = DataStatus.init,
    this.items = const [],
  });

  OrderEstimationState copyWith(
      {DataStatus? status,
        List<CheckBoxItem>? items,}) {
    return OrderEstimationState(
      status: status ?? this.status,
      items: items ?? this.items,
    );
  }
}
