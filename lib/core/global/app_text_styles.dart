import 'package:bookia/core/global/theme/app_colors.dart';
import 'package:bookia/core/global/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  const AppTextStyles._();

  static const TextStyle bodyMediumBlack = TextStyle(
    fontFamily: AppFonts.serifDisplay,
    fontSize: 22,
    fontWeight: FontWeight.w400,
    height: 1.5,
    letterSpacing: 0,
    color: AppColors.darkBlack,
  );

  static const TextStyle bodySmallWhite = TextStyle(
    fontFamily: AppFonts.serifDisplay,
    color: AppColors.backGroundColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1,
  );

  static const TextStyle bodySmallBlack = TextStyle(
    fontFamily: AppFonts.serifDisplay,
    color: AppColors.darkBlack,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1,
  );

  static const TextStyle heading = TextStyle(
    fontFamily: AppFonts.serifDisplay,
    color: AppColors.darkBlack,
    fontSize: 30,
    fontWeight: FontWeight.w400,
    height: 1.3,
  );
}
