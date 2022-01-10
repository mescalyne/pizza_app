import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/mobile/userpage_mobile.dart';
import 'package:toto_mobile/src/core/presentation/widgets/decider.dart';

class UserPage extends StatelessWidget {
  static const id = '/userpage';

  const UserPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Decider(
      mobile: UserMobilePage(),
      web: UserMobilePage(),
      mobileweb: UserMobilePage(),
    );
  }
}
