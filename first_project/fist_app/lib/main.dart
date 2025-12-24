import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Scaffold(
        backgroundColor: Colors.amber,
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.blueGrey, Colors.red],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: const Center(
        child: Text(
          'Hello World',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
