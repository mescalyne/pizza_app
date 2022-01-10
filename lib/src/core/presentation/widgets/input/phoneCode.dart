import 'package:flutter/cupertino.dart';
import 'package:toto_mobile/src/core/presentation/widgets/input/input.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/utils/validator.dart';

class PhoneCodeInput extends StatelessWidget {
  final TextEditingController controller;
  final String? errorText;
  final Function() onSubmit;
  final bool disabled;

  PhoneCodeInput(
      {required this.controller,
      required this.onSubmit,
      this.errorText,
      this.disabled = false});

  @override
  Widget build(BuildContext context) {
    return BasicInputField(
      hintText: TotoDictionary.basic.smsCode,
      inputFormatters: [DividerInputValidator.phoneCodeInsert],
      controller: controller,
      keyboardType: TextInputType.number,
      errorText: errorText,
      disabled: disabled,
      onChange: (text) => {
        if (StaticValidators.phoneCodeValidator(text) && !disabled) {onSubmit()}
      },
    );
  }
}
