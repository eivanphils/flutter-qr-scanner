import 'package:flutter/material.dart';

class AppTheme {
  static const MaterialColor deepPurple = Colors.deepPurple;

  static ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: deepPurple,

    // AppBarTheme
    appBarTheme: const AppBarTheme(
      color: deepPurple
    ),

    // FloatingButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: deepPurple
    ),

    // BottonNavigation
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: deepPurple,
      unselectedItemColor: deepPurple.shade200
    )
  );
}
