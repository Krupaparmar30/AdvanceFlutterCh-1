import 'package:avd_ch_1/screens/stepper2Page/stepper2Page.dart';
import 'package:avd_ch_1/screens/stepperPage/stepperPage.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>stepperPage(),
        "/secound":(context)=>stepper2Page()
      },
    );
  }
}
