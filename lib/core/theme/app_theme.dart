import 'package:echoapp/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: const AppBarTheme(
      color: AppColors.white,
      centerTitle: false,
      titleTextStyle: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w600, color: AppColors.black),
      toolbarHeight: kToolbarHeight + 20,
      iconTheme: IconThemeData(color: AppColors.black),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    primaryColor: AppColors.black,
    indicatorColor: AppColors.black,
    fontFamily: 'SFProText',
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.body),
      displayLarge: TextStyle(color: AppColors.black),
    ),
    cardColor: AppColors.cardLight,
    sliderTheme: SliderThemeData(overlayShape: SliderComponentShape.noOverlay),
    colorScheme: const ColorScheme.light(
      primary: AppColors.black,
      secondary: AppColors.lightRed,
      primaryContainer: AppColors.body,
    ).copyWith(background: AppColors.white),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.backgroundDark,
    appBarTheme: const AppBarTheme(
      color: AppColors.backgroundDark,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    primaryColor: AppColors.backgroundDark,
    indicatorColor: AppColors.white,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: AppColors.body),
      displayLarge: TextStyle(
        color: AppColors.white,
      ),
    ),
    cardColor: AppColors.cardDark,
    sliderTheme: SliderThemeData(overlayShape: SliderComponentShape.noOverlay),
    colorScheme: const ColorScheme.dark(
      primary: Colors.white,
      primaryContainer: AppColors.body,
      background: AppColors.backgroundDark,
    ).copyWith(background: AppColors.backgroundDark),
  );
}
