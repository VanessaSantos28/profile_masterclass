import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/shared/theme/dark/dark_theme.dart';

import '../shared/theme/light/light_theme.dart';

class AppTheme with ChangeNotifier {
  static AppTheme? _instance;
  bool isDarkTheme = true;

  static AppTheme get instance =>
      _instance == null ? _instance = AppTheme() : _instance!;

  ThemeMode get getCurrentThemeMode =>
      isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    isDarkTheme = !isDarkTheme;
  }

  ThemeData get dark => darkTheme;
  ThemeData get light => lightTheme;
}
