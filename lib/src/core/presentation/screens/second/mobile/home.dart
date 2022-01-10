import 'package:flutter/material.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class HomeMobilePage extends StatelessWidget {
  final IconData icon;

  const HomeMobilePage({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile Page'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {},
          child: Icon(
            icon,
            color: TotoTheme.icon.primary,
            size: 40,
          ),
        ),
      ),
    );
  }
}
