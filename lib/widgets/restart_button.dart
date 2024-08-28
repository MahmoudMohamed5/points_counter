import 'package:flutter/material.dart';
import 'package:points_counter/utils/app_colors.dart';

class RestartButton extends StatelessWidget {
  const RestartButton({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const ShapeDecoration(
        shape: CircleBorder(),
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [
            AppColors.blueColor,
            AppColors.redColor,
          ],
        ),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.restart_alt,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
