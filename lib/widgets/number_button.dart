import 'package:flutter/material.dart';
import 'package:points_counter/utils/app_styles.dart';

class NumberButton extends StatelessWidget {
  const NumberButton({
    super.key,
    required this.num,
    required this.onPressed,
    this.color,
  });
  final String num;
  final VoidCallback onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8),
        shape: const CircleBorder(),
      ),
      onPressed: onPressed,
      child: Text(
        num,
        style: AppStyles.styleBold40.copyWith(
          color: color,
          fontSize: MediaQuery.orientationOf(context) == Orientation.portrait
              ? MediaQuery.sizeOf(context).width * .1
              : MediaQuery.sizeOf(context).height * .08,
        ),
      ),
    );
  }
}
