import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';

class  contact_us_page_with_interaction  extends StatelessWidget {
  const  contact_us_page_with_interaction ({super.key});

  @override
  Widget build(BuildContext context) {

    //  ThemeChangeProviderTrue =
    //     Provider.of<ThemeChangeProvider>(context, listen: true);
    contactProvider contactProviderFalse =
        Provider.of<contactProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column
          (
          children: [
            SizedBox(
              height: 50,
            ),
       Padding(
         padding: const EdgeInsets.only(right: 50),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Icon(Icons.arrow_back_ios,color: Colors.blue.shade600,size: 28,),
             Text("Contact us",style:
             TextStyle(
                 color: Colors.blue.shade600,
                 fontSize: 28,
                 fontWeight: FontWeight.bold
             )

               ,)
           ],
         ),
       ),
        SizedBox(
          height: 20,
        ),
        Text("If you have any queries,get in touch with"),
        Text("us.We will be happy to help you!"),
            SizedBox(
              height: 20,
            ),

        Container(
          height: 70,
          width: 300,
          decoration:BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.blue.shade600)
          )  ,
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                  onDoubleTap: () {

                    contactProviderFalse.launchPhone();
                  }



                  ,child: Icon(Icons.phone_android,size: 32,color: Colors.blue.shade800,)),
              SizedBox(
                width: 40,
              ),
              GestureDetector(
              onDoubleTap: () {

                contactProviderFalse.launchPhone();
              }


              ,child: Text("+91 12345 67890",style: TextStyle(fontSize: 18),))
            ],
          ),
        ),
            SizedBox(height: 20,),
            Container(
              height: 70,
              width: 300,
              decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.blue.shade600)
              )  ,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                      onDoubleTap: () {

                        contactProviderFalse.launchMail();
                      }



                      ,child: Icon(Icons.email_outlined,size: 32,color: Colors.blue.shade800,)),
                  SizedBox(
                    width: 40,
                  ),
                  GestureDetector(
                      onDoubleTap: () {

                        contactProviderFalse.launchMail();
                      }


                      ,child: Text("info@xyzmail.com",style: TextStyle(fontSize: 18),))
                ],
              ),
            ),

        SizedBox(height: 10,),
        Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.blue.shade600),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              SizedBox(
                height:25,
              ),
              Text('Social Media',style:   TextStyle(
                  color: Colors.blue.shade600,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              )
                ,),
              SizedBox(
                height:15,
              ),
              Divider(
                color: Colors.blue.shade600,
              ),
              SizedBox(
                height:10,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 40,
                    width: 40,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage(
                  "assets/images/be.webp"

                       )
                     )
                   ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text('Haikuzen',style:   TextStyle(

                  fontSize: 18,

                )
                  ,),
              ],
            ),
              SizedBox(
                height:5,
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.blue.shade600,
              ),
              SizedBox(
                height:10,
              ),
              Row(

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/k.png"

                              )
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onDoubleTap: () {
                      contactProviderFalse.launchBe();
                    },
                    child: Text('haikuzen_designs',style:   TextStyle(

                      fontSize: 18,

                    )
                      ,),
                  ),
                ],
              ),
              SizedBox(
                height:10,
              ),
              Divider(
                indent: 20,
                endIndent: 20,
                color: Colors.blue.shade600,
              ),
              SizedBox(
                height:8,
              ),
             Row(
               children: [  Padding(
                 padding: const EdgeInsets.only(left: 25),
                 child: Container(
                   height: 40,
                   width: 40,
                   decoration: BoxDecoration(
                       image: DecorationImage(
                           image: AssetImage(
                               "assets/images/bro2.jpg"

                           )
                       )
                   ),
                 ),
               ),
                 SizedBox(
                   width: 30,
                 ),
                 Text('Haikuzen',style:   TextStyle(

                   fontSize: 18,

                 )
                   ,),
               ],
             ),
              SizedBox(
                height:5,
              ),

            ],
          ),
        )
        // ElevatedButton(onPressed: () {
        //   contactProviderFalse.launchWebsite();
        // }, child: Text('fv'))
          ],
        ),
      ),
    );
  }
}
