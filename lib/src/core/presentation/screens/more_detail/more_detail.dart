
import 'package:flutter/cupertino.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/web/more_detail.dart';
import 'package:toto_mobile/src/core/presentation/widgets/decider.dart';

import 'mobile/more_detail.dart';
import 'mweb/more_detail.dart';

class MoreDetailPage extends StatefulWidget {
  static const id = '/tabBarDetail';

  @override
  State<StatefulWidget> createState() => _MoreDetailPageState();
}

class _MoreDetailPageState extends State<MoreDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Decider(
      mobile: MoreDetailMobilePage(),
      web: MoreDetailWebPage(),
      mobileweb: MoreDetailMobileWebPage(),
    );
  }
}
