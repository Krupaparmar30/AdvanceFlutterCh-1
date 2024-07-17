import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OneTimeProvider extends ChangeNotifier
{
  bool isTrueOne=false;
  late SharedPreferences sharedPreferences;

  Future<void> setOneTime(bool isTrueOne)
  async {
    sharedPreferences =await SharedPreferences.getInstance();
    sharedPreferences.setBool('one1', isTrueOne);
    notifyListeners();
  }

  void ChangeTheme()
  {
    isTrueOne=!isTrueOne;
    setOneTime(isTrueOne);
    notifyListeners();
  }

  Future<void> getOneTime()
  async {
  SharedPreferences sharedPreferences= await  SharedPreferences.getInstance();
    isTrueOne=sharedPreferences.getBool('one1')??false;
    print("$isTrueOne");
    notifyListeners();
  }
  // OneTimeProvider()
  // {
  //   getOneTime();
  //   notifyListeners();
  // }
  OneTimeProvider(bool isHome1)
  {
    isTrueOne=isHome1;
    notifyListeners();

  }



}