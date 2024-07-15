import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OneTimeProvider extends ChangeNotifier
{
  bool isTrueOne=true;
  void ChangeTheme()
  {
    isTrueOne=!isTrueOne;
    setOneTime(isTrueOne);
    notifyListeners();
  }
  late SharedPreferences sharedPreferences;

  Future<void> setOneTime(bool isTrueOne)
  async {
    sharedPreferences =await SharedPreferences.getInstance();
    sharedPreferences.setBool('one1', isTrueOne);
  }

  Future<void> getOneTime()
  async {
    sharedPreferences= await  SharedPreferences.getInstance();
    sharedPreferences.getBool('one1')??false;
    print("$isTrueOne");
    notifyListeners();
  }
  OneTimeProvider(bool isHome1)
  {
    isTrueOne=isHome1;
    notifyListeners();

  }



}