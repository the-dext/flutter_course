import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

import 'package:flutter/services.dart';

// color scheme might not be newest way to theme
// but it's one of the easiest.
// you set up base colours and flutter infers the colours for widgets
// from these base colours
var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  // make sure that locking orientation works properly.
  WidgetsFlutterBinding.ensureInitialized();

  // locks the app to only portrait up but returns a future, so
  // run app has to be called after that completes.
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (onValue) => {
      runApp(
        MaterialApp(
          darkTheme: ThemeData.dark().copyWith(
            colorScheme: kDarkColorScheme,
            cardTheme: CardThemeData().copyWith(
              color: kDarkColorScheme.secondaryContainer,
              margin: EdgeInsets.all(16),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: kDarkColorScheme.primaryContainer,
                foregroundColor: kDarkColorScheme.onPrimaryContainer,
              ),
            ),
          ),
          theme: ThemeData.light().copyWith(
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
                backgroundColor: kColorScheme.primaryContainer,
              ),
            ),
            textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 14,
              ),
            ),
          ),
          themeMode: ThemeMode.system,
          home: Expenses(),
        ),
      ),
    },
  );
}
