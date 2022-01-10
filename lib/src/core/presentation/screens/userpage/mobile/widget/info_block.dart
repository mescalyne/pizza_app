import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/domain/entities/user.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/mobile/widget/info_edit_block.dart';
import 'package:toto_mobile/src/extensions/String.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class UserInfoBlock extends StatelessWidget {
  final UserDto currentUser;

  UserInfoBlock({required this.currentUser, Key? key}) : super(key: key);

  static const paddingOfContent = EdgeInsets.only(top: 16, left: 16, right: 16);
  static const heightOfContent = 191.0;
  static const widthOfSpace = 14.0;
  static const sizeOfIcon = 28.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: TotoTheme.surface,
        padding: paddingOfContent,
        height: heightOfContent,
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                InfoField(icon: TotoIcons.profile, field: currentUser.name),
                InfoField(
                    icon: TotoIcons.schedule, field: currentUser.dateOfBirth),
                InfoField(icon: TotoIcons.email, field: currentUser.email),
                InfoField(
                    icon: TotoIcons.phone,
                    field: StringExtension.stringPhone(currentUser.telephone!)),
              ],
            ),
            Positioned(
                right: 0,
                child: InkWell(
                  onTap: () {
                    BucketModalBottomItem.show(context, currentUser);
                  },
                  child: Icon(
                    TotoIcons.settings,
                    size: sizeOfIcon,
                  ),
                )),
          ],
        ));
  }
}

class InfoField extends StatelessWidget {
  final String? field;
  final IconData icon;
  const InfoField({
    required this.field,
    required this.icon,
    Key? key,
  }) : super(key: key);

  static const heightOfContent = 40.0;
  static const sizeOfIcon = 28.0;
  static const widthOfSpace = 14.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightOfContent,
      alignment: Alignment.centerLeft,
      child: Row(children: [
        Icon(
          icon,
          color: TotoTheme.accent,
          size: sizeOfIcon,
        ),
        Container(
          width: widthOfSpace,
        ),
        Text(
          field == null ? TotoDictionary.userInfoNotSpecifid : '$field',
          style: RobotoTextStyle.s18w500(TotoTheme.text.base),
        ),
      ]),
    );
  }
}

abstract class BucketModalBottomItem extends StatelessWidget {
  static Future show(BuildContext context, UserDto currentUser) {
    return showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: context,
        builder: (_) {
          return BottomItemField(
              currentUser: currentUser, userpageContext: context);
        });
  }
}
