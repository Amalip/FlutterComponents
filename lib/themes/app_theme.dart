import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.blueAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primaryColor,
      //AppBar Theme
      appBarTheme: const AppBarTheme(color: primaryColor, elevation: 0),

      //FAB Theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primaryColor, elevation: 10),

      //ElevatedButton Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(shape: const StadiumBorder())),

      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primaryColor)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(color: Colors.blueGrey, elevation: 0));
}
