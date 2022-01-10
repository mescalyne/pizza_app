import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/screens/login/mweb/login.dart';

class LoginPage extends StatefulWidget {
  static const id = '/login';

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return LoginMobilePage();
  }
}
