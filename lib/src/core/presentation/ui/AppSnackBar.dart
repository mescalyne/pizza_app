import 'package:flutter/material.dart';

///Show snack bar message with [snackBarTitle] and skip already showed snack bar
class AppSnackBar {
  static void showSnackBar(String snackBarTitle, BuildContext context) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();

    var snackBar = SnackBar(
      content: Text(snackBarTitle),
      action: SnackBarAction(
        label: '',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
