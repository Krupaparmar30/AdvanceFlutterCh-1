import 'package:flutter/material.dart';

class homePageOne extends StatelessWidget {
  const homePageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
body: Center(
  child: Column(
    children: [
      SizedBox(
        height: 100,
      ),
      Container(
        height: 200,
        width: 200,
        decoration:  BoxDecoration(
          color: Colors.pink,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.grey,offset: Offset(
                0,2
              ),
              blurRadius: 2,
              spreadRadius: 2)
            ],
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/krupa.jpg"))

        ),
      ),
      SizedBox(
        height: 20,
      ),

      Text("Welcome to Home Page",style: TextStyle(
        fontSize: 22,fontWeight: FontWeight.bold
      ),),
      SizedBox(
        height: 20,
      ),
      Text("My name is krupa parmar",style: TextStyle(
        fontSize: 16
      ),),
    ],
  ),
),
    );
  }
}
