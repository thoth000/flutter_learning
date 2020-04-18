import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class DataStorage with ChangeNotifier {
  int _number = Hive.box('data').get('value');
  int get number => _number;
  void increment(int i) {
    _number+=i;
    Hive.box('data').put('value',_number);
    notifyListeners();
  }

  bool _isDark = Hive.box('data').get('isDark');
  Color _themeColor = Colors.redAccent;
  ThemeData appTheme() => ThemeData(
    brightness: _isDark ? Brightness.light:Brightness.dark,
    primaryColor: _themeColor,
  );
  void changeMode() async{
    _isDark = !_isDark;
    await Hive.box('data').put('isDark', _isDark);
    notifyListeners();
  }
  void changeTheme(Color theme){
    _themeColor = theme;
    notifyListeners();
  }

  var _selectStr = 'fruits';
  get selectStr => _selectStr;
  void changeStr(s){
    _selectStr = s;
    notifyListeners();
  }
}