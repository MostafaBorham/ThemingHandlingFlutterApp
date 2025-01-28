import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

abstract class AppThemes {
  static ThemeData getLightModeTheme() => ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightBlue,
    ),
        brightness: Brightness.light,
        fontFamily: AppFonts.poppins,
        scaffoldBackgroundColor: AppColors.white,
        primaryColor: AppColors.lightBlue,
        shadowColor: AppColors.c_222227,
        colorScheme: ColorScheme.light(
          primaryFixed: AppColors.c_61677D,
        ),
      );
  //////////////////////////////////////////////////////////////////////////////
  static ThemeData getDarkModeTheme() => ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.indigo,
    ),
        fontFamily: AppFonts.poppins,
        scaffoldBackgroundColor: AppColors.black,
        primaryColor: AppColors.indigo,
        shadowColor: AppColors.c_7C8BA0,
        colorScheme: ColorScheme.dark(
          primaryFixed: AppColors.c_7C8BA0,
        ),
      );
}
