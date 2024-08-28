import 'package:flutter/material.dart';
import 'package:points_counter/widgets/landscape_layout.dart';
import 'package:points_counter/widgets/number_button.dart';
import 'package:points_counter/widgets/portrait_lay_out.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? const PortraitLayout()
              : const LandscapeLayout();
        },
      )),
    );
  }
}
