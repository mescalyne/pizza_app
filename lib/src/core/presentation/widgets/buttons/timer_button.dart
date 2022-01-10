import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/button.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/theme.dart';

final Duration _duration = const Duration(seconds: 1);

class TimerButton extends StatefulWidget {
  final int delay;
  final Function() onPressed;

  TimerButton({required this.onPressed, this.delay = 60}) : super();

  @override
  _TimerButtonState createState() => _TimerButtonState();
}

class _TimerButtonState extends State<TimerButton> {
  late Timer _timer;
  late int _delay;

  void startTimer() {
    if (_timer.isActive) return;

    _delay = widget.delay;
    _timer = Timer.periodic(
      _duration,
      (Timer timer) {
        if (_delay == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _delay = _delay - 1;
          });
        }
      },
    );
  }

  @override
  void initState() {
    _delay = widget.delay;
    _timer = Timer.periodic(
      _duration,
      (Timer timer) {
        if (_delay == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _delay = _delay - 1;
          });
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _timer.isActive
        ? MainButton(
            label: '${TotoDictionary.basic.resendPhoneCode} $_delay c',
            textStyle: RobotoTextStyle.s14w400(TotoTheme.button.disabledText),
            background: TotoTheme.button.secondaryDisabled,
          )
        : MainButton(
            label: TotoDictionary.basic.resendPhoneCode,
            textStyle: RobotoTextStyle.s14w400(TotoTheme.button.secondary),
            background: TotoTheme.button.primary,
            onPressed: () {
              widget.onPressed();
              startTimer();
            },
          );
  }
}
