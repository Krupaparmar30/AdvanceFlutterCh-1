import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/task - 1.5 one time intro screen/provider/provider.dart';
import 'screens/task - 1.5 one time intro screen/view/homePageOne/homePageOne.dart';
import 'screens/task - 1.5 one time intro screen/view/oneTimeScreen/oneTimeScreen.dart';
import 'screens/task - 1.6  contact us page with interaction1/provider/provider.dart';
import 'screens/task - 1.6  contact us page with interaction1/view/ contact_us_page_with_interaction/ contact_us_page_with_interaction .dart';

bool isHome1=false;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

   isHome1 = sharedPreferences.getBool('one1') ?? false;
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => OneTimeProvider(isHome1),
      ),
      ChangeNotifierProvider(
        create: (context) => contactProvider(),
      ),
    ],
    builder: (context, child) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ThemeChangeProvider ThemeChangeProviderTrue =
    //     Provider.of<ThemeChangeProvider>(context, listen: true);
    // ThemeChangeProvider ThemeChangeProviderFalse =
    //     Provider.of<ThemeChangeProvider>(context, listen: false);
    return MaterialApp(
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

    debugShowCheckedModeBanner: false,
        home: contact_us_page_with_interaction()
      // Provider.of<contactProvider>(context,listen: false).isTrueOne
        //     ? homePageOne():oneTimePage1()
    );
  }
}
