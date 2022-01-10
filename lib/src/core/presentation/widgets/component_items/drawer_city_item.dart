import 'package:flutter/material.dart';

class CityDrawerItem extends StatelessWidget {
  final String title;

  const CityDrawerItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title),
    );
  }
}
