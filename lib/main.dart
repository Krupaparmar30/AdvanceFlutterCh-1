
import 'package:avd_ch_1/screens/task%20-%201.5%20one%20time%20intro%20screen/provider/provider.dart';
import 'package:avd_ch_1/screens/task%20-%201.5%20one%20time%20intro%20screen/view/homePageOne/homePageOne.dart';
import 'package:avd_ch_1/screens/task%20-%201.5%20one%20time%20intro%20screen/view/oneTimeScreen/oneTimeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future<void> main() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();


 bool isHome1 = sharedPreferences.getBool("one1") ?? false;



  runApp(MultiProvider(
    providers: [

      ChangeNotifierProvider(
        create: (context) => OneTimeProvider(isHome1),
      ),
    ],
    builder: (context, child) => myApp(),
  ));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ThemeChangeProvider ThemeChangeProviderTrue =
    //     Provider.of<ThemeChangeProvider>(context, listen: true);
    // ThemeChangeProvider ThemeChangeProviderFalse =
    //     Provider.of<ThemeChangeProvider>(context, listen: false);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //     colorScheme: ColorScheme.light(
      //   primary: Colors.purple,
      //   secondary: Colors.green,
      //   onPrimary: Colors.red,
      //   onSecondary: Colors.blue,
      // )),
      // darkTheme: ThemeData(
      //     colorScheme: ColorScheme.dark(
      //   primary: Colors.yellow,
      //   secondary: Colors.blue,
      //   onPrimary: Colors.orange,
      //   onSecondary: Colors.pink,
      // )),
      // themeMode: Provider.of<ThemeChangeProvider>(context).isDark
      //     ? ThemeMode.dark
      //     : ThemeMode.light,

      // debugShowCheckedModeBanner: false,
      home: Provider.of<OneTimeProvider>(context,listen: false).isTrueOne
          ? homePageOne():oneTimePage1()
      ,
    );
  }
}
