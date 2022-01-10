import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/bloc/event.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class UserLeaveBlock extends StatelessWidget {
  const UserLeaveBlock({Key? key}) : super(key: key);

  static const paddingOfContent = EdgeInsets.only(right: 20, left: 16);
  static const heightOfContent = 56.0;
  static const widthOfSpace = 14.0;
  static const sizeOfIcon = 28.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<UserpageBloc>().add(UserpageEvent.logOut());
      },
      child: Container(
        padding: paddingOfContent,
        height: heightOfContent,
        color: TotoTheme.surface,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  TotoIcons.arrow_back,
                  color: TotoTheme.accent,
                  size: sizeOfIcon,
                ),
                Container(
                  width: widthOfSpace,
                ),
                Text(
                  TotoDictionary.userInfoGoAway,
                  style:
                      RobotoTextStyle.smallCapsFs14Fw700(TotoTheme.text.base),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
