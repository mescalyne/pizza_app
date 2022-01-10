import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class InputForm extends StatelessWidget {
  final String hintText;
  final TextStyle hintStyle;
  final Function onTap;
  final TextEditingController textEditingController;

  const InputForm(this.textEditingController,
      {Key? key,
      required this.hintStyle,
      required this.hintText,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        onTap: onTap(),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(
              color: TotoTheme.primary,
              width: 1,
            ),
          ),
          hintStyle: RobotoTextStyle.s18w400(TotoTheme.text.base),
          hintText: TotoDictionary.inputCityOrAddress,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
      ),
    );
  }
}
