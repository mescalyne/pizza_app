import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/resources/resources.dart';

extension RobotoTextStyle on TextStyle {
  static const fontFamilyRoboto = 'Roboto';

  //Title TextStyle
  static TextStyle titleTextStyle() => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: TotoTheme.text.base,
        fontFamily: fontFamilyRoboto,
      );

  //FontWeight w700 - Bold
  static TextStyle s36w700(Color? _color) => TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w700,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s24w700(Color? _color) => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s20w700(Color? _color) => TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s18w700(Color? _color) => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s16w700(Color? _color) => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  //FontWeight w500 - Medium
  static TextStyle s24w500(Color? _color) => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s18w500(Color? _color) => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s16w500(Color? _color) => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s16w500LineThrough(Color? _color) => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: _color,
        fontFamily: fontFamilyRoboto,
        decoration: TextDecoration.lineThrough,
      );

  static TextStyle s15w500(Color? _color) => TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s14w500(Color? _color) => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s13w500(Color? _color) => TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s12w500(Color? _color) => TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  //FontWeight w400 - Regular
  static TextStyle s20w400(Color? _color) => TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s18w400(Color? _color) => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s16w400(Color? _color) => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s14w400(Color? _color) => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s13w400h16(Color? _color) => TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamilyRoboto,
        color: _color,
        height: 1.6,
      );

  static TextStyle s13w400(Color? _color) => TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s13w300(Color? _color) => TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w300,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s12w400(Color? _color) => TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s11w400(Color? _color) => TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s11w300(Color? _color) => TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w300,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s10w400(Color? _color) => TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  //FontWeight w300 - Light
  static TextStyle s18w300(Color? _color) => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w300,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s16w300(Color? _color) => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s14w300(Color? _color) => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle s12w300(Color? _color) => TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  //Small Caps
  static TextStyle smallCapsFs18Fw700(Color? _color) => TextStyle(
        fontFeatures: const <FontFeature>[FontFeature.enable('smcp')],
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle smallCapsFs18Fw500(Color? _color) => TextStyle(
        fontFeatures: const <FontFeature>[FontFeature.enable('smcp')],
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle smallCapsFs18Fw400(Color? _color) => TextStyle(
        fontFeatures: const <FontFeature>[FontFeature.enable('smcp')],
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle smallCapsFs16Fw500(Color? _color) => TextStyle(
        fontFeatures: const <FontFeature>[FontFeature.enable('smcp')],
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle smallCapsFs16Fw400(Color _color) => TextStyle(
        fontFeatures: const <FontFeature>[FontFeature.enable('smcp')],
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle smallCapsFs14Fw700(Color _color) => TextStyle(
        fontFeatures: const <FontFeature>[FontFeature.enable('smcp')],
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle smallCapsFs14Fw700UnderLine(Color _color) => TextStyle(
        fontFeatures: const <FontFeature>[FontFeature.enable('smcp')],
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: _color,
        fontFamily: fontFamilyRoboto,
        decoration: TextDecoration.underline,
      );

  static TextStyle smallCapsFs14Fw500(Color _color) => TextStyle(
        fontFeatures: const <FontFeature>[FontFeature.enable('smcp')],
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );

  static TextStyle smallCapsFs13Fw400(Color? _color) => TextStyle(
        fontFeatures: const <FontFeature>[FontFeature.enable('smcp')],
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: _color,
        fontFamily: fontFamilyRoboto,
      );
}
