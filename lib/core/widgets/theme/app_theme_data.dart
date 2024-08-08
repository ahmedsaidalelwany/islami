import 'package:flutter/material.dart';

// ignore: camel_case_types
class App_theme_manager {
  static const Color primaryColor = Color(0xffb7935f);
  static const Color primarydarkColor = Color(0xffFACC1D);
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
        fontSize: 25,
        fontWeight: FontWeight.bold,
        fontFamily: 'ElMessiri',
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'ElMessiri',
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: 'ElMessiri',
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        fontFamily: 'ElMessiri',
        color: Colors.black,
      ),
    ),
  );
  static ThemeData darktheme = ThemeData(
    primaryColor: primarydarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff141a2e),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xffFACC1D),
      selectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: 'ElMessiri',
      ),
      selectedIconTheme: IconThemeData(
        color: Color(0xffFACC1D),
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
      color: primarydarkColor,
      space: 20,
      thickness: 5,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        fontFamily: 'ElMessiri',
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'ElMessiri',
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontFamily: 'ElMessiri',
        color: Color(0xffFACC1D),
      ),
      bodySmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        fontFamily: 'ElMessiri',
        color: Color(0xffFACC1D),
      ),
    ),
  );
}
