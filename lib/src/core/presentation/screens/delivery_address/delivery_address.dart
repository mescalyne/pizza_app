import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery_address/mobile/delivery_address_mobile.dart';
import 'package:toto_mobile/src/core/presentation/widgets/decider.dart';

class DeliveryAddressPage extends StatelessWidget {
  static const id = '/delivery_address';

  const DeliveryAddressPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Decider(
      mobile: DeliveryAddressMobilePage(),
      web: DeliveryAddressMobilePage(),
      mobileweb: DeliveryAddressMobilePage(),
    );
  }
}
