import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/screens/pickup/mobile/pickup.dart';
import 'package:toto_mobile/src/core/presentation/screens/pickup/mweb/pickup.dart';
import 'package:toto_mobile/src/core/presentation/screens/pickup/web/pickup.dart';
import 'package:toto_mobile/src/core/presentation/widgets/decider.dart';

class PickUpPage extends StatefulWidget {
  static const id = '/pickup';

  const PickUpPage({Key? key}) : super(key: key);

  @override
  _PickUpPageState createState() => _PickUpPageState();
}

class _PickUpPageState extends State<PickUpPage> {
  @override
  Widget build(BuildContext context) {
    return Decider(
      mobile: PickUpMobilePage(),
      web: PickUpWebPage(),
      mobileweb: PickUpMobileWebPage(),
    );
  }
}
