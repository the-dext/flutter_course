import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
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
        ),
      ),
    ),
  );
}
