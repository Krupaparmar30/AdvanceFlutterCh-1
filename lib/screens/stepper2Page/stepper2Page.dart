import 'package:flutter/material.dart';

class stepper2Page extends StatefulWidget {
  const stepper2Page({super.key});

  @override
  State<stepper2Page> createState() => _stepper2PageState();
}

class _stepper2PageState extends State<stepper2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Stepper Sample",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Stepper(
          onStepCancel: () {
            if (index2 > 0) {
              setState(() {
                index2 = index2 - 1;
              });
            }
          },
          onStepContinue: () {
            if (index2 <= 0) {
              setState(() {
                index2 = index2 + 1;
              });
            }
          },
          onStepTapped: (int index) {
            setState(() {
              index2 = index;
            });
          },
          type: StepperType.horizontal,
          steps: [
            Step(
                title: Text(
                  "Personal",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Column(
                  children: [
                    SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                            label: Row(
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  color: Colors.black,
                                ),
                                Text("Email")
                              ],
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                            label: Row(
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Colors.black,
                                ),
                                Text("Address")
                              ],
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      child: TextField(
                        decoration: InputDecoration(
                            label: Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                                Text("Mobile Number")
                              ],
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                    ),
                  ],
                )),
            Step(
                title: Text(
                  "Contect",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your moblie number",
                          label: Row(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.black,
                              ),
                              Text("Mobile Number"),
                            ],
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.blue))),
                    )
                  ],
                )),
            Step(
                title: Text(
                  "Upload",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                content: Text("U[load your Details"))
          ],
        ));
  }
}

int index2 = 0;
