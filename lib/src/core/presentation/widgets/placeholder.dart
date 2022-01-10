import 'package:flutter/material.dart';

class MyPlaceHolder extends StatefulWidget {
  const MyPlaceHolder({Key? key}) : super(key: key);

  @override
  _MyPlaceHolderState createState() => _MyPlaceHolderState();
}

class _MyPlaceHolderState extends State<MyPlaceHolder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Placeholder'),
    );
  }
}
