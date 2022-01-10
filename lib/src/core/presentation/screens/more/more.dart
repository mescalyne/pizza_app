import 'package:flutter/cupertino.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/web/tab_bar_more.dart';
import 'package:toto_mobile/src/core/presentation/widgets/decider.dart';

import 'mobile/more.dart';
import 'mweb/more.dart';

class MorePage extends StatefulWidget {
  static const id = '/tabBarMore';

  @override
  State<StatefulWidget> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Decider(
          mobile: MoreMobilePage(),
          web: MoreWebPage(),
          mobileweb: MoreMobileWebPage(),
        );
  }
}