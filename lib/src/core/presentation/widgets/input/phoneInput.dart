import 'package:flutter/cupertino.dart';
import 'package:toto_mobile/src/core/presentation/widgets/input/input.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/theme.dart';
import 'package:toto_mobile/src/utils/validator.dart';

class PhoneInputField extends StatelessWidget {
  final TextEditingController controller;
  final String? errorText;
  final double? width;
  final TextStyle? labelStyle;

  final Function(String data)? onChange;

  PhoneInputField(
      {this.errorText,
      this.width,
      this.labelStyle,
      required this.controller,
      this.onChange});

  @override
  Widget build(BuildContext context) {
    return BasicInputField(
      width: width,
      hintText: TotoDictionary.basic.phoneNumberMask,
      hintTextStyle: labelStyle,
      prefixIcon: Icon(TotoIcons.phone, color: TotoTheme.icon.gray),
      inputFormatters: [DividerInputValidator.phoneNumberInsert],
      keyboardType: TextInputType.phone,
      controller: controller,
      errorText: errorText,
      onChange: (text) => {
        if (onChange != null) {onChange!(text)}
      },
    );
  }
}
