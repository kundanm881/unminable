import 'package:flutter/material.dart';

class AppTheme extends ChangeNotifier {
  ThemeMode? themeMode;

  AppTheme.getTheme({required ThemeMode themeMode}) {
    this.themeMode = themeMode;
    notifyListeners();
  }
}

class Themes {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: Colors.blue[50],
  );
  static ThemeData darkTheme = ThemeData.dark();
}
