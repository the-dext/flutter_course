import 'package:adv_basics/startScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: AlignmentGeometry.topLeft,
              end: AlignmentGeometry.bottomRight,
              colors: [
                Colors.black,
                Colors.deepPurpleAccent,
                Colors.deepPurple,
              ],
            ),
          ),
          child: StartScreen(),
        ),
      ),
    ),
  );
}
