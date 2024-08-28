
import 'package:flutter/material.dart';
import 'package:points_counter/utils/app_colors.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({
    super.key,
    this.child,
    this.color = AppColors.blueColor,
  });
  final Color color;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: child,
      ),
    );
  }
}
