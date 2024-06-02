import 'package:flutter/material.dart';
import 'package:ticket_app/src/styles/color_scheme.dart';
import 'package:ticket_app/src/styles/colors.dart';
import 'package:ticket_app/src/styles/themeStyles/elevated_button.dart';

class AppThemes {
  static final darkTheme = ThemeData(
    colorScheme: AppColorSchemes.darkColorScheme,
    scaffoldBackgroundColor: AppColors.black,

    //
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.grey2,
      dragHandleColor: AppColors.grey5,
      showDragHandle: true,
      dragHandleSize: Size(38.0, 5.0),
    ),

    // elevated button
    elevatedButtonTheme: CustomElevatedButtonThemeData.darkTheme,

    // card
    cardTheme: const CardTheme(
      elevation: 6.0,
      margin: EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
    ),
  );
}
