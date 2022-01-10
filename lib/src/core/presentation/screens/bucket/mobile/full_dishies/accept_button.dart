import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/event.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class AcceptButtonField extends StatelessWidget {
  final String total;
  final bool isAcceptAvailable;

  static const acceptFieldAngleRadius = 20.0;
  static const buttonPadding = EdgeInsets.only(right: 16, left: 16, top: 12);
  static const buttonHeight = 40.0;
  static const buttonRadius = 25.0;
  static const refreshSize = 20.0;

  const AcceptButtonField({
    required this.total,
    required this.isAcceptAvailable,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var acceptFieldHeight = 190 + MediaQuery.of(context).padding.bottom;
    var bucketBloc = BlocProvider.of<BucketBloc>(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(acceptFieldAngleRadius),
            topRight: Radius.circular(acceptFieldAngleRadius)),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -1),
              color: Colors.black38,
              spreadRadius: -3,
              blurRadius: 15),
        ],
      ),
      height: acceptFieldHeight,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              isAcceptAvailable
                  ? BlocProvider.of<BucketBloc>(context)
                      .add(OnRouteToOrderingEvent())
                  : {};
            },
            child: Container(
              padding: buttonPadding,
              child: Container(
                alignment: Alignment.center,
                height: buttonHeight,
                decoration: BoxDecoration(
                  color: TotoTheme.background.primary,
                  borderRadius: BorderRadius.circular(buttonRadius),
                  border: Border.all(color: TotoTheme.primary),
                ),
                child: isAcceptAvailable
                    ? Text(
                        '${TotoDictionary.fullBucketChekout} ${TotoDictionary.toRubles(total)}',
                        textAlign: TextAlign.center,
                        style: RobotoTextStyle.s16w700(Colors.white),
                      )
                    : Container(
                        height: refreshSize,
                        width: refreshSize,
                        alignment: AlignmentDirectional.center,
                        child: CircularProgressIndicator(
                          color: TotoTheme.surface,
                        ),
                      ),
              ),
            ),
          ),
          Container(
            padding: buttonPadding,
            child: GestureDetector(
              onTap: () {
                bucketBloc.add(CancelOrderEvent());
              },
              child: Container(
                alignment: Alignment.center,
                height: buttonHeight,
                decoration: BoxDecoration(
                  color: TotoTheme.gray,
                  borderRadius: BorderRadius.circular(buttonRadius),
                ),
                child: Text(
                  TotoDictionary.userInfoCansel,
                  textAlign: TextAlign.center,
                  style: RobotoTextStyle.s16w400(null),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
