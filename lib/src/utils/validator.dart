import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class StaticValidators {
  static final String _email =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  static final String _phoneNumber = r'(^(\w{11})$)';
  static final String _phoneCode = r'\d{4}';
  static final String _name = r'(^[a-zA-Zа-яА-Я]+$)';

  static bool phoneNumberValidator(String value) {
    var regExp = RegExp(StaticValidators._phoneNumber);
    return regExp.hasMatch(value);
  }

  static bool userNameValidator(String value) {
    var regExp = RegExp(StaticValidators._name);
    return regExp.hasMatch(value);
  }

  static bool phoneCodeValidator(String value) {
    var regExp = RegExp(StaticValidators._phoneCode);
    return regExp.hasMatch(value);
  }

  static bool emailValidator(String value) {
    var regExp = RegExp(StaticValidators._email);
    return regExp.hasMatch(value);
  }

  static MaskTextInputFormatter bonusValidator(int value) {
    var mask = '#' * value.toString().length;
    var regExp = RegExp(r'[0-9]');
    print(mask);
    return MaskTextInputFormatter(mask: mask, filter: {'#': regExp});
  }
}

class DividerInputValidator {
  static MaskTextInputFormatter phoneCodeInsert =
      MaskTextInputFormatter(mask: '####', filter: {'#': RegExp(r'[0-9]')});

  static MaskTextInputFormatter phoneNumberInsert = MaskTextInputFormatter(
      mask: '+7 (###) ### ## ##', filter: {'#': RegExp(r'[0-9]')});
}

class PatternParser {
  static String parseMaskPhoneNumberToDefault(String data) {
    var result = data.replaceAll(RegExp('(\\+7|\\W+)'), '');
    return '8$result';
  }

  static String parseMaskPhoneNumberToDecoration(String data) {
    var result = data.replaceAll(RegExp('(\\+7|\\W+)'), '');
    var stringWithoutCode;
    if (result != data) {
      stringWithoutCode = '8$result';
    } else {
      stringWithoutCode = result;
    }
    if (stringWithoutCode.length == 11) {
      var resultString = stringWithoutCode[0] +
          ' ' +
          stringWithoutCode.substring(1, 4) +
          ' ' +
          stringWithoutCode.substring(4, 7) +
          '-' +
          stringWithoutCode.substring(7, 9) +
          '-' +
          stringWithoutCode.substring(9);
      return resultString;
    }
    return stringWithoutCode;
  }
}
