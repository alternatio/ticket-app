import 'package:flutter/material.dart';
import 'package:ticket_app/src/styles/colors.dart';
import 'package:ticket_app/src/styles/fonts.dart';

class CustomElevatedButtonThemeData {
  static final darkTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStateProperty.all(AppFonts.title3),
      backgroundColor: WidgetStateProperty.all(AppColors.grey3),
      minimumSize: WidgetStateProperty.all(const Size.fromHeight(42.0)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
    ),
  );
}
