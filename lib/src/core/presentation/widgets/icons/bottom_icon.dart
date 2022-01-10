import 'package:flutter/material.dart';

class BottomIcon extends StatelessWidget {
  final String title;
  final Icon icon;

  const BottomIcon({ Key? key, required this.title, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: icon
            ),
            Text(title)
          ],
        ),
      ],
    );
  }
}