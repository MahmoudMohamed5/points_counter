import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Row(
            children: [
              Column(),
              Column(),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              '1',
              style: TextStyle(
                fontFamily: 'digital-7',
                fontSize: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
