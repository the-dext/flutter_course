import 'package:flutter/material.dart';
import 'package:fist_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: GradientContainer([Colors.red, Colors.blue, Colors.deepOrange]),
      ),
    ),
  );
}
