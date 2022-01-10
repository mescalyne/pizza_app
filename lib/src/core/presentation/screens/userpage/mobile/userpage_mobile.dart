import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/user.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/mobile/widget/bonus_block.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/mobile/widget/info_block.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/mobile/widget/leave_block.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class UserMobilePage extends StatelessWidget {
  const UserMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserInfoPage();
  }
}

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({Key? key}) : super(key: key);

  static const sizeOfIcon = 20.0;
  static const elevationOfAppBar = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          TotoDictionary.userInfoProfile,
        ),
        titleTextStyle: RobotoTextStyle.titleTextStyle(),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            context.read<RouterBloc>().add(RouterEvent.pop());
          },
          child: Icon(
            TotoIcons.arrow_back,
            size: sizeOfIcon,
            color: TotoTheme.black,
          ),
        ),
        elevation: elevationOfAppBar,
        backgroundColor: TotoTheme.surface,
      ),
      body: BlocBuilder<UserpageBloc, UserpageState>(builder: (context, state) {
        if (state is HomeInitial) {
          return ContentUserPage(currentUser: state.loadedUser);
        }
        return Center(child: CircularProgressIndicator());
      }),
    );
  }
}

class ContentUserPage extends StatelessWidget {
  final UserDto currentUser;

  ContentUserPage({required this.currentUser, Key? key}) : super(key: key);

  static const heightOfSpace = 8.0;
  static const paddingOfContent = EdgeInsets.only(top: 20);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: TotoTheme.bgGrey,
        padding: paddingOfContent,
        child: Column(
          children: [
            UserInfoBlock(currentUser: currentUser),
            Container(
              height: heightOfSpace,
            ),
            UserBonusBlock(
              bonusSize: currentUser.bonusBalance!.floor().toInt(),
            ),
            Container(
              height: heightOfSpace,
            ),
            // UserAddressBlock(),
            // Container(
            //   height: heightOfSpace,
            // ), //TODO: много багов, в релиз не пихать пока.
            UserLeaveBlock(),
          ],
        ));
  }
}
