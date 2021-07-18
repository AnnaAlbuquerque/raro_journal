import 'package:flutter/material.dart';
import 'package:raro_journal/src/shared/constants/app_colors.dart';

class AppTextStyles {
  static const TextStyle roboto16W700 = TextStyle(
    color: AppColors.white,
    fontFamily: "Roboto",
    fontSize: 16,
    fontWeight: FontWeight.bold,
    letterSpacing: 0.15,
  );

  static const TextStyle roboto16W400 = TextStyle(
    color: AppColors.black,
    fontFamily: "Roboto",
    fontSize: 16,
    letterSpacing: 0.15,
  );

  static const TextStyle roboto14W400 = TextStyle(
    color: AppColors.black,
    fontFamily: "Roboto",
    fontSize: 14,
    letterSpacing: 0.15,
  );

  static const TextStyle roboto10W300 = TextStyle(
    color: AppColors.black,
    fontFamily: "Roboto",
    fontSize: 10,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w300,
  );
}
