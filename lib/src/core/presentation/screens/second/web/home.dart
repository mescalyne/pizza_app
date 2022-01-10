import 'package:flutter/material.dart';

class HomeWebPage extends StatefulWidget {
  const HomeWebPage({ Key? key }) : super(key: key);

  @override
  _HomeWebPageState createState() => _HomeWebPageState();
}

class _HomeWebPageState extends State<HomeWebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web Page'),
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return Container(
          height: 200,
          child: Text('Hello world'),
        );
      }),
    );
  }
}