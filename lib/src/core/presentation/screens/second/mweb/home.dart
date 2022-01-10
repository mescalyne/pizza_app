import 'package:flutter/material.dart';

class HomeMobileWebPage extends StatefulWidget {
  const HomeMobileWebPage({ Key? key }) : super(key: key);

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
    );
  }
}