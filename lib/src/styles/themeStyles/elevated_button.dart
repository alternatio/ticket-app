import 'package:flutter/material.dart';
import 'package:ticket_app/src/styles/fonts.dart';

class CustomElevatedButtonThemeData {
  static final darkTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStateProperty.all(AppFonts.title3),
    ),
  );
}