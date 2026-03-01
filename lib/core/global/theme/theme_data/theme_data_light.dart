import 'package:bookia/core/global/theme/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData getThemeDataLight() => ThemeData(
  primaryColor: AppColors.primaryColor,
  scaffoldBackgroundColor: AppColors.backGroundColor,
  appBarTheme: AppBarTheme(backgroundColor: AppColors.backGroundColor),

  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(AppColors.darkBlack),
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      elevation: 3,
      padding: EdgeInsets.only(left: 10),
    ),
  ),
);
