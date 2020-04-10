import 'package:flutter/material.dart';

class DataStorage with ChangeNotifier {
  int _number = 0;
  int get number => _number;
  void increment() {
    _number++;
    notifyListeners();
  }

  bool _isDark = false;
  bool get isDark => _isDark;
  ThemeData appTheme() => ThemeData(
    brightness: _isDark ? Brightness.light:Brightness.dark,
  );
  void changeMode() {
    _isDark = !_isDark;
    notifyListeners();
  }
}