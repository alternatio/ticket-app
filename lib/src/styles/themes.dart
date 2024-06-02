import 'package:flutter/material.dart';
import 'package:ticket_app/src/styles/color_scheme.dart';
import 'package:ticket_app/src/styles/colors.dart';
import 'package:ticket_app/src/styles/themeStyles/elevated_button.dart';

class AppThemes {
  static final darkTheme = ThemeData(
    colorScheme: AppColorSchemes.darkColorScheme,
    scaffoldBackgroundColor: AppColors.black,
    elevatedButtonTheme: CustomElevatedButtonThemeData.darkTheme,
  );
}
