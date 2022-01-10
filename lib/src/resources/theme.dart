import 'dart:ui';

import 'package:flutter/material.dart';

class TotoTheme {
  static final primary = Color(0xFFAAC52D);
  static final primaryLight = Color(0xFFDDE8AB);
  static final primaryDark = Color(0xFF697A1A);
  static final accent = Color(0xFFFF4B12);
  static final accentVariant = Color(0xFF9A2501);
  static final accentOrange = Color(0xFFF2C94C);
  static final bg = Color(0xFFFFFFFF);
  static final bgGrey = Color(0xFFE5E5E5);
  static final surface = Color(0xFFFFFFFF);
  static final textBase = Color(0xFF111111); //в дизайне textBlack
  static final textLight = Color(0xFFFFFFFF);
  static final textPrimaryDart = Color(0xFF697A1A);
  static final primaryBorder = Color(0xFF697A1A);
  static final textDisabled = Color(0xFFBDBDBD);
  static final gray = Color(0xFFF2F2F2);
  static final grayText = Color(0xFFCCCCCC);
  static final darkGrayText = Color(0xFF828282); //в дизайне gray3
  static final greenGrayText = Color(0xFF4F4F4F); //в дизайне gray2
  static final lightGreenGrayText = Color(0xFF7F9024);
  static final black = Color(0xFF000000);
  static final white = Color(0xFFFFFFFF);

  static final background = TotoBackgroundTheme(
    base: bg,
    surface: surface,
    primary: primary,
    primaryGradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xFFAAC52D),
        Color(0xFF677819),
      ],
    ),
    primaryHorizontalGradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFAAC52D),
        Color(0xFF677819),
      ],
    ),
  );

  static final text = TotoTextTheme(
      base: textBase,
      baseInverted: textLight,
      primary: primary,
      white: white,
      primaryDark: primaryDark,
      danger: accent);

  static final button = TotoButtonTheme(
    primary: primary,
    primaryDisabled: primaryLight,
    onPrimary: textLight,
    secondary: bg,
    disabledText: textDisabled,
    secondaryDisabled: gray,
    onSecondary: textBase,
    primaryBorder: primaryBorder,
  );

  static final icon = TotoIconTheme(
      primary: primary,
      accent: accent,
      inactive: Color(0xFFDADADA),
      gray: Color(0xFF828282));

  static final input = TotoInputTheme(
    border: primary,
    errorBorder: accent,
  );
}

class TotoBackgroundTheme {
  final Color base;
  final Color surface;
  final Color primary;
  final LinearGradient primaryGradient;
  final LinearGradient primaryHorizontalGradient;

  TotoBackgroundTheme({
    required this.base,
    required this.surface,
    required this.primary,
    required this.primaryGradient,
    required this.primaryHorizontalGradient,
  });
}

class TotoTextTheme {
  final Color base;
  final Color baseInverted;
  final Color primary;
  final Color white;
  final Color primaryDark;
  final Color danger;

  TotoTextTheme(
      {required this.base,
      required this.baseInverted,
      required this.primary,
      required this.white,
      required this.primaryDark,
      required this.danger});
}

class TotoButtonTheme {
  final Color primary;
  final Color primaryDisabled;
  final Color primaryBorder;
  final Color onPrimary;
  final Color secondary;
  final Color secondaryDisabled;
  final Color onSecondary;
  final Color disabledText;

  TotoButtonTheme({
    required this.primary,
    required this.primaryDisabled,
    required this.primaryBorder,
    required this.onPrimary,
    required this.secondary,
    required this.secondaryDisabled,
    required this.onSecondary,
    required this.disabledText,
  });
}

class TotoIconTheme {
  final Color primary;
  final Color accent;
  final Color inactive;
  final Color gray;

  TotoIconTheme(
      {required this.primary,
      required this.accent,
      required this.inactive,
      required this.gray});
}

class TotoInputTheme {
  final Color border;
  final Color errorBorder;

  TotoInputTheme({
    required this.border,
    required this.errorBorder,
  });
}
