import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class DeliveryMobilePage extends StatelessWidget {
  const DeliveryMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return YandexMap();
    /*TODO return DeliveryMobileMainPage(
      deliveryAppBar: DeliveryAppBar(),
      deliveryAdressBlock: DeliveryAdressBlock(),
      deliveryUserBlock: DeliveryUserBlock(),
      deliveryTimeBlock: DeliveryTimeBlock(),
      deliverCommentBlock: DeliveryCommentBlock(),
      deliverBottomBlock: DeliveryButtonBlock(),
    );*/
  }
}

class DeliveryMobileMainPage extends StatelessWidget {
  final deliveryAppBar;
  final deliveryAdressBlock;
  final deliveryUserBlock;
  final deliveryTimeBlock;
  final deliverCommentBlock;
  final deliverBottomBlock;

  const DeliveryMobileMainPage(
      {required this.deliveryAppBar,
      required this.deliveryAdressBlock,
      required this.deliveryUserBlock,
      required this.deliveryTimeBlock,
      required this.deliverCommentBlock,
      required this.deliverBottomBlock,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: deliveryAppBar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 16),
              alignment: Alignment.centerLeft,
              height: 57,
              child: Text(
                TotoDictionary.delivery,
                style: RobotoTextStyle.s18w700(null),
              ),
            ),
            deliveryAdressBlock,
            SizedBox(
              height: 4,
            ),
            deliveryUserBlock,
            SizedBox(
              height: 4,
            ),
            deliveryTimeBlock,
            SizedBox(
              height: 4,
            ),
            deliverCommentBlock,
            SizedBox(
              height: 514,
            ),
          ],
        ),
      ),
      bottomSheet: deliverBottomBlock,
    );
  }
}

class DeliveryAppBar extends StatelessWidget {
  const DeliveryAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: TotoTheme.surface,
      title: Text(
        TotoDictionary.deliveryCheckout,
        style: RobotoTextStyle.s24w700(null),
      ),
      leading: InkWell(
        onTap: () {},
        child: Icon(TotoIcons.arrow_back),
      ),
    );
  }
}
