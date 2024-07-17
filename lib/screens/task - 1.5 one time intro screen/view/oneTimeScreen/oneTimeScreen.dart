//import 'package:avd_ch_1/screens/task%20-%201.5%20one%20time%20intro%20screen/view/homePageOne/homePageOne.dart';
// import 'package:avd_ch_1/screens/task%20-%201.5%20one%20time%20intro%20screen/view/oneTimeScreen2/oneTimeScreen2.dart';
import 'package:flutter/material.dart';

import '../homePageOne/homePageOne.dart';
import '../oneTimeScreen2/oneTimeScreen2.dart';

class oneTimePage1 extends StatelessWidget {
  const oneTimePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(

          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/o1.png"))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Welcome to Surat",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "I provide essential stuff for your \n      ui designs every tuesday!",
              style: TextStyle(color: Colors.grey.shade500,fontSize: 14),
            ),
            SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onDoubleTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => homePageOne(),
                        ));
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(color: Colors.grey.shade900),
                      )),
                  GestureDetector(
                      onDoubleTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => oneTimeScreen2(),
                        ));
                      },
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.grey.shade900),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
