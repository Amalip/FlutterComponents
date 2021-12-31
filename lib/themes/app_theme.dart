import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.red;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(color: primaryColor, elevation: 0));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(color: Colors.blueGrey, elevation: 0));
}
