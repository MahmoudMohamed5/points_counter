import 'package:flutter/material.dart';
import 'package:points_counter/utils/app_colors.dart';
import 'package:points_counter/utils/app_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              AppColors.blueColor,
              AppColors.redColor,
            ]),
      ),
      padding: const EdgeInsets.all(20),
      child: const Text(
        'Points Counter',
        style: AppStyles.styleBold32,
      ),
    );
  }
}
