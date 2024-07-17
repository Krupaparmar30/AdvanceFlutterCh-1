//import 'package:avd_ch_1/screens/task%20-%201.5%20one%20time%20intro%20screen/view/homePageOne/homePageOne.dart';
import 'package:flutter/material.dart';

import '../homePageOne/homePageOne.dart';

class oneTimeScreen3 extends StatelessWidget {
  const oneTimeScreen3({super.key});

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
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 280,
                width: 280,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/images/o3.png"))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Download now !",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            SizedBox(
              height: 25,
            ),
            Text("You can follow me if you wantand comment \n              on any to get some freebies",style: TextStyle(
                color: Colors.grey.shade500
            ),),
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
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => homePageOne(),)
            );
            }



                ,child: Text("Skip",style: TextStyle(color: Colors.grey.shade900),)),
                  GestureDetector(
                      onDoubleTap: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => homePageOne(),)
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
