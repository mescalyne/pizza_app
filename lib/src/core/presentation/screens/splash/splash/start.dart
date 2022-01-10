import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/splash/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/splash/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/splash/bloc/state.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/svg.dart';
import 'package:toto_mobile/src/resources/theme.dart';

// * WIDGET SIZES
const resumeButtonHeight = 36.0;
const resumeButtonWidth = 203.0;

// * PADDINGS
const freeSpace = SizedBox(height: 30);

// * TEXT STYLES

// FINAL
final _resumeButtonTextStyle = RobotoTextStyle.s14w500(
  TotoTheme.text.primaryDark,
);

final _specialMenuTextStyle =
    RobotoTextStyle.s24w500(TotoTheme.text.baseInverted);

final _showYourLocationTextStyle =
    RobotoTextStyle.s18w400(TotoTheme.text.baseInverted);

// * WIDGET DECORATIONS

// FINAL
final _resumeButtonStyle = ButtonStyle(
  side: MaterialStateProperty.all(
    BorderSide(width: 0),
  ),
  shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
    (states) {
      return _resumeButtonRoundedRectangleBorder;
    },
  ),
  backgroundColor: MaterialStateProperty.all(Colors.white),
);

final _resumeButtonRoundedRectangleBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(resumeButtonRadius),
);

// CONST
const resumeButtonRadius = 30.0;

// VAR
var backgroundDecoration = BoxDecoration(
  gradient: TotoTheme.background.primaryGradient,
);

class StartPage extends StatelessWidget {
  static const id = '/start';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<StartBloc, StartState>(
        builder: (context, state) {
          return Stack(
            children: [
              // background
              Container(
                decoration: backgroundDecoration,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),

              // main widgets
              state.requirePermission == RequirePermission.hide
                  ? Container()
                  : Container(
                      width: MediaQuery.of(context).size.width,
                      child: _mainContent(context),
                    )
            ],
          );
        },
      ),
    );
  }
}

// * PUBLIC FUNCTIONS

void onResumeButtonClicked(BuildContext context) {
  context.read<StartBloc>().add(
        StartPageEvent.onResumeButtonClicked(),
      );
}

void checkPermission(BuildContext context) {
  context.read<StartBloc>().add(
        StartPageEvent.checkPermissions(),
      );
}

// * WIDGETS

// Image LOGO
final Widget _welcomeLogoImage = Image.asset(welcomeLogo);

Widget _title(String title, TextStyle textStyle) {
  return Text(
    title,
    style: textStyle,
    textAlign: TextAlign.center,
  );
}

Widget _mainContent(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _welcomeLogoImage,
      freeSpace,
      _title(
        TotoDictionary.specialMenu,
        _specialMenuTextStyle,
      ),
      freeSpace,
      _title(
        TotoDictionary.showYourLocation,
        _showYourLocationTextStyle,
      ),
      freeSpace,
      _resumeButton(context)
    ],
  );
}

Widget _resumeButton(BuildContext context) {
  return Container(
    height: resumeButtonHeight,
    width: resumeButtonWidth,
    child: TextButton(
      style: _resumeButtonStyle,
      onPressed: () => onResumeButtonClicked(context),
      child: Text(
        TotoDictionary.resume,
        style: _resumeButtonTextStyle,
      ),
    ),
  );
}
