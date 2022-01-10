import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/widgets/decider.dart';

import 'mobile/home.dart';
import 'mweb/home.dart';
import 'web/home.dart';

class SecondPage extends StatelessWidget {
  static const id = '/second';
  final IconData icon;

  const SecondPage({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Decider(
        mobile: HomeMobilePage(icon: icon),
        web: HomeWebPage(),
        mobileweb: HomeMobileWebPage());
  }
}
