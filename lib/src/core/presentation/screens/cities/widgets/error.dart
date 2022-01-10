import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/event.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

class CitiesNotFoundError extends StatelessWidget {
  const CitiesNotFoundError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: TotoTheme.background.primaryGradient,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            screamerLogo,
            width: 157,
            height: 138,
          ),
          SizedBox(
            height: 44,
          ),
          Text(
            'Упс! Что-то пошло не так.\nПопробуйте еще раз',
            style: RobotoTextStyle.s18w400(
              TotoTheme.surface,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 44,
          ),
          Container(
            height: 40,
            width: 343,
            child: TextButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(width: 0),
                ),
                shape:
                    MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
                  (states) {
                    return RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    );
                    ;
                  },
                ),
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () => BlocProvider.of<CitiesBloc>(context).add(CitiesEvent.onLoaded()),
              child: Text(
                'Повторить',
                style: RobotoTextStyle.s16w400(TotoTheme.text.primaryDark),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
