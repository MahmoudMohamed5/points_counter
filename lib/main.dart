import 'package:flutter/material.dart';
import 'package:points_counter/pages/home_page.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Points Counter',
      home: HomePage(),
    );
  }
}
