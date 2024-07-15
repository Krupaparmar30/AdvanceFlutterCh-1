import 'package:avd_ch_1/screens/task%20-%201.5%20one%20time%20intro%20screen/view/homePageOne/homePageOne.dart';
import 'package:flutter/material.dart';

class oneTimeScreen3 extends StatelessWidget {
  const oneTimeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
            Text("Download now !",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            Text("You can follow me if you wantand comment \n on any to get some freebies",style: TextStyle(
                color: Colors.grey.shade400
            ),),
            SizedBox(
              height: 30,
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



                ,child: Text("Skip",style: TextStyle(color: Colors.grey),)),
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
