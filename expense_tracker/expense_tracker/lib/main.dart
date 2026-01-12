import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

// color scheme might not be newest way to theme
// but it's one of the easiest.
// you set up base colours and flutter infers the colours for widgets
// from these base colours
var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: CardThemeData().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: EdgeInsets.all(16),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            
          ),
        )
      ),
      home: Expenses(),
    ),
  );
}
