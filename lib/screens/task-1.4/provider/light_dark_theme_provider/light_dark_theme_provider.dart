import 'package:flutter/material.dart';

class ThemeChangeProvider extends ChangeNotifier{
  bool isDark=false;
  void themeChange()
  {
    isDark=!isDark;
    notifyListeners();
  }
}