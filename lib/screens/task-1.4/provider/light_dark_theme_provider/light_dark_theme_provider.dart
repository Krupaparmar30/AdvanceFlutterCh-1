import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeChangeProvider extends ChangeNotifier{
  bool isDark=false;

  ThemeChangeProvider(bool theme);
  void themeChange()
  {
    isDark=!isDark;
    setTheme(isDark);
    notifyListeners();
  }
  late SharedPreferences sharedPreferences;

  Future<void> setTheme(bool value)
  async {
    sharedPreferences =await SharedPreferences.getInstance();
    sharedPreferences.setBool('theme', value);
  }
  Future<void> getTheme()
  async {
    sharedPreferences= await  SharedPreferences.getInstance();
    sharedPreferences.getBool('theme')??false;
    print("$isDark");
    notifyListeners();
  }
  OneTimeProvider(bool theme)
  {
    isDark=theme;
    notifyListeners();

  }
}

// import 'package:flutter/cupertino.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class OneTimeProvider extends ChangeNotifier
// {
//   bool isTrueOne=true;
//   void ChangeTheme()
//   {
//     isTrueOne=!isTrueOne;
//     setOneTime(isTrueOne);
//     notifyListeners();
//   }
//   late SharedPreferences sharedPreferences;
//
//   Future<void> setOneTime(bool isTrueOne)
//   async {
//     sharedPreferences =await SharedPreferences.getInstance();
//     sharedPreferences.setBool('one1', isTrueOne);
//   }
//
//   Future<void> getOneTime()
//   async {
//     sharedPreferences= await  SharedPreferences.getInstance();
//     sharedPreferences.getBool('one1')??false;
//     print("$isTrueOne");
//     notifyListeners();
//   }
//   OneTimeProvider(bool theme)
//   {
//     isTrueOne=theme;
//     notifyListeners();
//
//   }
//
//
//
// }