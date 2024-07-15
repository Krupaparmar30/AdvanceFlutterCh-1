import 'package:flutter/material.dart';

class homePageOne extends StatelessWidget {
  const homePageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [
    SizedBox(
      height: 50,
    ),
    Container(
      height: 200,
      width: 200,
      decoration:  BoxDecoration(
        color: Colors.pink,
        // image: DecorationImage(
        //   image: AssetImage(
        //
        //   )
        // )
      ),
    ),
    SizedBox(
      height: 20,
    ),
    
    Text("Welcome to Home Page"),
    Text("My name is krupa parmar"),
  ],
),
    );
  }
}
