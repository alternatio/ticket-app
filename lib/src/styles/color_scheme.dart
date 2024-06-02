import 'package:flutter/material.dart';
import 'package:ticket_app/src/styles/colors.dart';

class AppColorSchemes {
  static const darkColorScheme = ColorScheme.dark(
    surface: AppColors.black,
    onSurface: AppColors.white,
    // surfaceContainerHighest: AppColors.white,
  );

  static const lightColorScheme = ColorScheme.light();
}
