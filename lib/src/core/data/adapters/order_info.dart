import 'package:toto_mobile/src/core/data/network/models/order_info_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/order_info.dart';

typedef OrderInfo = GOrderInfoFragment;

extension OrderInfoAdapter on OrderInfo {
  OrderInfoDto get toOrderInfoDto {
    return OrderInfoDto(
      orderId: order_id,
      cancelCause: delivery_cancel_cause,
      cancelComment: delivery_cancel_comment,
      deliveryDate: delivery_date?.value,
      actualTime: actual_time?.value,
      billTime: bill_time,
      cancelTime: cancel_time,
      confirmTime: confirm_time,
      createdTime: created_time?.value,
      printTime: print_time?.value,
      sendTime: send_time?.value,
      personsCount: persons_count,
    );
  }
}
