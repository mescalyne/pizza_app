import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

class Decider extends StatefulWidget {
  final Widget? ios;
  final Widget? android;
  final Widget? mobile;
  final Widget? web;
  //MobileWeb
  final Widget? mobileweb;
  const Decider(
      {Key? key, this.ios, this.android, this.mobile, this.web, this.mobileweb})
      : super(key: key);

  @override
  _DeciderState createState() => _DeciderState();
}

class _DeciderState extends State<Decider> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if (kIsWeb) {
      if (width > 600) {
        if (widget.web != null) {
          return widget.web!;
        }
      } else {
        if (widget.mobileweb != null) {
          return widget.mobileweb!;
        }
      }
    } else if (widget.ios != null && Platform.isIOS) {
      return widget.ios!;
    }
    if (widget.android != null && Platform.isAndroid) {
      return widget.android!;
    }
    if (widget.mobile != null && (Platform.isAndroid || Platform.isIOS)) {
      return widget.mobile!;
    }
    return Container(
      child: widget.ios ??
          widget.android ??
          widget.mobile ??
          widget.web ??
          widget.mobileweb,
    );
  }
}
