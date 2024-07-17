
//import 'package:avd_ch_1/screens/task%20-%201.5%20one%20time%20intro%20screen/view/homePageOne/homePageOne.dart';
//import 'package:avd_ch_1/screens/task%20-%201.5%20one%20time%20intro%20screen/view/oneTimeScreen3/oneTimeScreen3.dart';
import 'package:flutter/material.dart';

import '../homePageOne/homePageOne.dart';
import '../oneTimeScreen3/oneTimeScreen3.dart';

class oneTimeScreen2 extends StatelessWidget {
  const oneTimeScreen2({super.key});

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
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/o2.png"))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Design Template uploads \n         Every Tuesday !",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            SizedBox(
              height: 10,
            ),
            Text("Make sure to take a look my uplab \n          profile every tuesday!",style: TextStyle(
                color: Colors.grey.shade500,fontSize: 12

            ),),
            SizedBox(
              height: 125,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(

                  onDoubleTap: () {
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => homePageOne(),)
            );
            }





                ,child: Text("Skip",style: TextStyle(color: Colors.grey.shade900),)),
                  GestureDetector(
                      onDoubleTap: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => oneTimeScreen3(),)
                        );
                      }



                      ,child: Text("Next",style: TextStyle(color: Colors.black),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
