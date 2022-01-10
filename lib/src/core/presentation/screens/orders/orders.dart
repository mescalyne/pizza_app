import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/widgets/decider.dart';

import 'mobile/orders.dart';

class OrdersPage extends StatelessWidget {
  static const id = '/orders';

  const OrdersPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Decider(
      mobile: OrdersMobilePage(),
      web: OrdersMobilePage(),
      mobileweb: OrdersMobilePage(),
    );
  }
}
