import 'package:flutter/material.dart';
import 'package:points_counter/utils/app_colors.dart';
import 'package:points_counter/widgets/custom_background.dart';
import 'package:points_counter/widgets/number_button.dart';
import 'package:points_counter/widgets/number_view_item.dart';

class LandscapeLayout extends StatefulWidget {
  const LandscapeLayout({
    super.key,
  });

  @override
  State<LandscapeLayout> createState() => _LandscapeLayoutState();
}

class _LandscapeLayoutState extends State<LandscapeLayout> {
  int scoreBlue = 0;
  int scoreRed = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBackground(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NumberButton(
                      onPressed: () {
                        if (scoreBlue != 0) {
                          setState(() {
                            scoreBlue > 1 ? scoreBlue -= 1 : scoreBlue = 0;
                          });
                        }
                      },
                      num: '-1',
                    ),
                    NumberButton(
                      onPressed: () {
                        if (scoreBlue != 0) {
                          setState(() {
                            scoreBlue > 2 ? scoreBlue -= 2 : scoreBlue = 0;
                          });
                        }
                      },
                      num: '-2',
                    ),
                    NumberButton(
                      onPressed: () {
                        if (scoreBlue != 0) {
                          setState(() {
                            scoreBlue > 3 ? scoreBlue -= 3 : scoreBlue = 0;
                          });
                        }
                      },
                      num: '-3',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    NumberViewItem(
                      color: AppColors.blueColor,
                      num: scoreBlue,
                      score: scoreBlue == 100
                          ? 1
                          : scoreRed == 100
                              ? 0
                              : null,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NumberButton(
                      onPressed: () {
                        if (scoreBlue < 100 && scoreRed != 100) {
                          setState(() {
                            scoreBlue += 1;
                          });
                        }
                      },
                      num: '+1',
                    ),
                    NumberButton(
                      onPressed: () {
                        if (scoreBlue < 100 && scoreRed != 100) {
                          setState(() {
                            scoreBlue < 98 ? scoreBlue += 2 : scoreBlue = 100;
                          });
                        }
                      },
                      num: '+2',
                    ),
                    NumberButton(
                      onPressed: () {
                        if (scoreBlue < 100 && scoreRed != 100) {
                          setState(() {
                            scoreBlue < 97 ? scoreBlue += 3 : scoreBlue = 100;
                          });
                        }
                      },
                      num: '+3',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 2,
        ),
         CustomBackground(
          color: AppColors.redColor,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NumberButton(
                            onPressed: () {
                              if (scoreRed != 0) {
                                setState(() {
                                  scoreRed > 1 ? scoreRed -= 1 : scoreRed = 0;
                                });
                              }
                            },
                            num: '-1',
                            color: AppColors.redColor,
                          ),
                          NumberButton(
                            onPressed: () {
                              if (scoreRed != 0) {
                                setState(() {
                                  scoreRed > 2 ? scoreRed -= 2 : scoreRed = 0;
                                });
                              }
                            },
                            color: AppColors.redColor,
                            num: '-2',
                          ),
                          NumberButton(
                            onPressed: () {
                              if (scoreRed != 0) {
                                setState(() {
                                  scoreRed > 3 ? scoreRed -= 3 : scoreRed = 0;
                                });
                              }
                            },
                            color: AppColors.redColor,
                            num: '-3',
                          ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                     NumberViewItem(
                color: AppColors.redColor,
                num: scoreRed,
                score: scoreRed == 100
                    ? 1
                    : scoreBlue == 100
                        ? 0
                        : null,
              ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     NumberButton(
                            onPressed: () {
                              if (scoreRed < 100 && scoreBlue != 100) {
                                setState(() {
                                  scoreRed += 1;
                                });
                              }
                            },
                            color: AppColors.redColor,
                            num: '+1',
                          ),
                          NumberButton(
                            onPressed: () {
                              if (scoreRed < 100 && scoreBlue != 100) {
                                setState(() {
                                  scoreRed < 98
                                      ? scoreRed += 2
                                      : scoreRed = 100;
                                });
                              }
                            },
                            color: AppColors.redColor,
                            num: '+2',
                          ),
                          NumberButton(
                            onPressed: () {
                              if (scoreRed < 100 && scoreBlue != 100) {
                                setState(() {
                                  scoreRed < 97
                                      ? scoreRed += 3
                                      : scoreRed = 100;
                                });
                              }
                            },
                            color: AppColors.redColor,
                            num: '+3',
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
