import 'package:flutter/material.dart';

import 'package:toto_mobile/src/core/presentation/screens/delivery/mobile/delivery_choose.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/mweb/delivery.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/web/delivery.dart';
import 'package:toto_mobile/src/core/presentation/widgets/decider.dart';

import 'bloc/state.dart';

class DeliveryPage extends StatelessWidget {
  static const id = '/delivery';
  ChooseDeliveryAddressScenario scenario = ChooseDeliveryAddressScenario.pop;

  DeliveryPage({required this.scenario});

  @override
  Widget build(BuildContext context) {
    return Decider(
      mobile: DeliveryChoosePage(scenario: scenario),
      web: DeliveryWebPage(),
      mobileweb: DeliveryMobileWebPage(),
    );
  }
}
