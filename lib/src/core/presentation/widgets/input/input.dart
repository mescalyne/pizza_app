import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/theme.dart';

const double _defaultHeight = 40;
const double _defaultWidth = 265;
TextStyle _textLabelStyle = RobotoTextStyle.s13w400(TotoTheme.text.base);

final InputBorder _inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(100.0)),
    borderSide: BorderSide(color: TotoTheme.input.border));

final InputBorder _inputErrorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(100.0)),
    borderSide: BorderSide(color: TotoTheme.input.errorBorder));

class InputSurface extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget child;

  const InputSurface({
    required this.child,
    this.height = _defaultHeight,
    this.width = _defaultWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: TotoTheme.background.base,
      child: child,
    );
  }
}

class BasicInputField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  final TextInputType? keyboardType;
  final TextStyle? hintTextStyle;
  final String? errorText;
  final Icon? prefixIcon;
  final double? height;
  final double? width;
  final bool disabled;
  final TextCapitalization textCapitalization;

  final List<TextInputFormatter> inputFormatters;
  final Function(String data)? onChange;

  BasicInputField({
    required this.hintText,
    required this.controller,
    this.hintTextStyle,
    this.prefixIcon,
    this.keyboardType,
    this.errorText,
    this.width = _defaultWidth,
    this.height = _defaultHeight,
    this.inputFormatters = const [],
    this.disabled = false,
    this.onChange,
    this.textCapitalization = TextCapitalization.sentences,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
        enabled: !disabled,
        controller: controller,
        textCapitalization: textCapitalization,
        keyboardType: keyboardType ?? TextInputType.text,
        inputFormatters: inputFormatters,
        style: hintTextStyle ?? _textLabelStyle,
        onChanged: (text) => {
          if (onChange != null) {onChange!(text)}
        },
        decoration:
            prefixIcon != null ? _prefixDecoration() : _noPrefixDecoration(),
      ),
    );
  }

  InputDecoration _prefixDecoration() => InputDecoration(
      errorText: errorText,
      enabledBorder: errorText != null ? _inputErrorBorder : _inputBorder,
      focusedBorder: errorText != null ? _inputErrorBorder : null,
      border: _inputBorder,
      prefixIcon: prefixIcon,
      errorStyle: RobotoTextStyle.s11w400(TotoTheme.text.base),
      contentPadding: EdgeInsets.only(top: 2.0),
      prefixIconConstraints: BoxConstraints(minWidth: 50),
      hintText: hintText);

  InputDecoration _noPrefixDecoration() => InputDecoration(
      errorText: errorText,
      enabledBorder: errorText != null ? _inputErrorBorder : _inputBorder,
      contentPadding: EdgeInsets.only(top: 2.0, left: 20),
      errorStyle: RobotoTextStyle.s11w400(TotoTheme.text.base),
      border: _inputBorder,
      hintText: hintText);
}
