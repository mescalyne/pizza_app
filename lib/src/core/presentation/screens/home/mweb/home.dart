import 'package:flutter/material.dart';

import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class HomeMobileWebPage extends StatefulWidget {
  const HomeMobileWebPage({Key? key}) : super(key: key);

  @override
  _HomeMobileWebPageState createState() => _HomeMobileWebPageState();
}

class _HomeMobileWebPageState extends State<HomeMobileWebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Web Page'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {},
          child: Icon(
            TotoIcons.add_circle,
            color: TotoTheme.icon.primary,
            size: 40,
          ),
        ),
      ),
    );
  }
}
