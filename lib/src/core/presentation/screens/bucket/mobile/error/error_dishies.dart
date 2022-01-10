import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/event.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class ErrorBucket extends StatelessWidget {
  static const paddingOfContent = EdgeInsets.only(right: 15, left: 15);
  static const paddingOfErrorText = EdgeInsets.only(top: 20, bottom: 40);
  static const paddingOfRefButton =
      EdgeInsets.only(right: 16, left: 16, top: 12);
  static const widhtOfEmptyImage = 40.0;
  static const heightOfEmptyImage = 40.0;
  static const heightOfButton = 40.0;
  static const borderRadiusOfButton = 25.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
          child: Padding(
        padding: paddingOfContent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: paddingOfErrorText,
              child: Text(TotoDictionary.errorBucketText,
                  textAlign: TextAlign.center,
                  style:
                      RobotoTextStyle.smallCapsFs18Fw400(TotoTheme.text.base)),
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<BucketBloc>(context).add(LoadBucketEvent());
              },
              child: Padding(
                padding: paddingOfRefButton,
                child: Container(
                  alignment: Alignment.center,
                  height: heightOfButton,
                  decoration: BoxDecoration(
                    color: TotoTheme.background.primary,
                    borderRadius: BorderRadius.circular(borderRadiusOfButton),
                    border: Border.all(color: TotoTheme.primary),
                  ),
                  child: Text(
                    TotoDictionary.emptyBucketButton,
                    textAlign: TextAlign.center,
                    style: RobotoTextStyle.s16w700(TotoTheme.text.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
