import 'package:flutter/material.dart';

class settingsProvider extends ChangeNotifier {
  String CurrentLanguage = 'en';
  ThemeMode CurrentTheme = ThemeMode.light;

  changeLanguage(String Newlanguage) {
    if (CurrentLanguage == Newlanguage) return;
    CurrentLanguage = Newlanguage;

    notifyListeners();
  }

  changeTheme(ThemeMode NewTheme) {
    if (CurrentTheme == NewTheme) return;
    CurrentTheme = NewTheme;

    notifyListeners();
  }

  String getbackGroundImage() {
    return CurrentTheme == ThemeMode.dark
        ? 'assets/images/home_dark_background.png'
        : 'assets/images/home-bk.png';
  }

  bool isDark() {
    return CurrentTheme == ThemeMode.dark;
  }
}
