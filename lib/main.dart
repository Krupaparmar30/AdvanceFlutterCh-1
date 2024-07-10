import 'package:avd_ch_1/screens/stepper2Page/stepper2Page.dart';
import 'package:avd_ch_1/screens/stepperPage/stepperPage.dart';
import 'package:avd_ch_1/screens/task-1.4/provider/light_dark_theme_provider/light_dark_theme_provider.dart';
import 'package:avd_ch_1/screens/task-1.4/view/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeChangeProvider(),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.light(
          primary: Colors.purple,
          secondary: Colors.green,
          onPrimary: Colors.red,
          onSecondary: Colors.blue,
        )),
        darkTheme: ThemeData(
            colorScheme: ColorScheme.dark(
          primary: Colors.yellow,
          secondary: Colors.pink,
          onPrimary: Colors.orange,
          onSecondary: Colors.blue,
        )),
        themeMode: Provider.of<ThemeChangeProvider>(context).isDark
            ? ThemeMode.dark
            : ThemeMode.light,

        debugShowCheckedModeBanner: false,
        home: change_theme_using_provider(),
        // routes: {
        //   '/':(context)=>stepperPage(),
        //   "/secound":(context)=>stepper2Page()
        // },
      ),
    );
  }
}
