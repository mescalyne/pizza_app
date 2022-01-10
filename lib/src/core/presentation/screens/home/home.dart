import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/widgets/decider.dart';
import 'mobile/home.dart';
import 'mweb/home.dart';
import 'web/home.dart';

class HomePage extends StatefulWidget {
  static const id = '/home';
  final MainScreen initialPage;

  const HomePage({Key? key, required this.initialPage}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Decider(
      mobile: HomeMobilePage(initialPage: widget.initialPage),
      web: HomeWebPage(),
      mobileweb: HomeMobileWebPage(),
    );
  }
}
