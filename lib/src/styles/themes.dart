import 'package:flutter/material.dart';
import 'package:ticket_app/src/styles/themeStyles/elevated_button.dart';

class AppThemes {
  static final darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(),
    elevatedButtonTheme: CustomElevatedButtonThemeData.darkTheme,
  );
}