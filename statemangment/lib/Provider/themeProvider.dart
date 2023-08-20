import 'package:flutter/material.dart';

class themeChanger with ChangeNotifier {
  var _theme = ThemeMode.dark;
  ThemeMode get theme => _theme;

  void themeData(theme) {
    _theme = theme;
    notifyListeners();
  }
}
