import 'package:flutter/material.dart';
import 'package:points_counter/utils/app_colors.dart';

abstract class AppStyles {
  static const TextStyle styleBold32 = TextStyle(
    color: Colors.white,
    fontSize: 32,
    fontFamily: 'digital-7',
    fontWeight: FontWeight.w700,
  );
  static TextStyle styleBold40 = const TextStyle(
    color: AppColors.blueColor,
    fontSize: 40,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle styleBold100 = TextStyle(
    color: Colors.white,
    fontSize: 100,
    fontFamily: 'digital-7',
    fontWeight: FontWeight.w700,
  );
}
