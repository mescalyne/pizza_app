import 'package:flutter/material.dart';

import 'package:toto_mobile/src/resources/resources.dart';

class HomeWebPage extends StatefulWidget {
  const HomeWebPage({Key? key}) : super(key: key);

  @override
  _HomeWebPageState createState() => _HomeWebPageState();
}

class _HomeWebPageState extends State<HomeWebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wen Page'),
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
