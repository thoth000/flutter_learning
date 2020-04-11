import 'package:flutter/material.dart';

class DataStorage with ChangeNotifier {
  int _number = 0;
  int get number => _number;
  void increment(int i) {
    _number+=i;
    notifyListeners();
  }

  bool _isDark = false;
  Color _themeColor = Colors.redAccent;
  ThemeData appTheme() => ThemeData(
    brightness: _isDark ? Brightness.light:Brightness.dark,
    primaryColor: _themeColor,
  );
  void changeMode() {
    _isDark = !_isDark;
    notifyListeners();
  }
  void changeTheme(Color theme){
    _themeColor = theme;
    notifyListeners();
  }
}