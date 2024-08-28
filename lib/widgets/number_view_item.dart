import 'package:flutter/material.dart';
import 'package:points_counter/utils/app_images.dart';
import 'package:points_counter/utils/app_styles.dart';

class NumberViewItem extends StatelessWidget {
  const NumberViewItem({
    super.key,
    this.color,
    required this.num,
    this.score,
  });
  final Color? color;
  final int num;
  final int? score;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Text(
                num.toString().padLeft(2, '0'),
                style: AppStyles.styleBold100,
              ),
              score == null
                  ? const SizedBox()
                  : Positioned(
                      top: 25,
                      left: -10,
                      child: Transform.rotate(
                        angle: -0.524,
                        child: Image.asset(
                          score == 1 ? Assets.imagesWin : Assets.imagesLose,
                          height: 70,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
