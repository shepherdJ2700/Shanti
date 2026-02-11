import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF6F7F9),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
      ),
    ),
  );
}
