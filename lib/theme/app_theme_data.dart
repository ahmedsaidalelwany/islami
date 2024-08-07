import 'package:flutter/material.dart';

// ignore: camel_case_types
class App_theme_manager {
  static const Color primaryColor = Color(0xffb7935f);
  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: 'ElMessiri',
      ),
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 35,
      ),
      showUnselectedLabels: false,
      unselectedItemColor: Colors.white,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 28,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: primaryColor,
      space: 20,
      thickness: 5,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: 'ElMessiri',
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        fontFamily: 'ElMessiri',
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        fontFamily: 'ElMessiri',
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: 'ElMessiri',
        color: Colors.black,
      ),
    ),
  );
}
