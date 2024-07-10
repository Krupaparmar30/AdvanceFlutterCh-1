import 'package:flutter/material.dart';

class stepperPage extends StatefulWidget {
  const stepperPage({super.key});

  @override
  State<stepperPage> createState() => _stepperPageState();
}

class _stepperPageState extends State<stepperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Flutter Stepper Demo",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stepper(
                currentStep: index1,
                onStepCancel: () {
                  setState(() {
                    if (index1 > 0) {
                      setState(() {
                        index1 = index1 - 1;
                      });
                    }
                  });
                },
                onStepContinue: () {
                  if (index1 <= 0) {
                    setState(() {
                      index1 += 1;
                    });
                  }
                },
                onStepTapped: (int index) {
                  setState(() {
                    index1 = index;
                  });
                },
                steps: <Step>[
                  Step(
                      title: Text("Account"),
                      content: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter youe account number",
                          hintStyle: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                      )),
                  Step(
                      title: Text("Address"),
                      content: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter youe account address",
                          hintStyle: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                      )),
                  Step(
                      title: Text("Mobile Number"),
                      content: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter youe mobile number",
                          hintStyle: TextStyle(
                            color: Colors.black45,
                          ),
                        ),
                      ))
                ])
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: GestureDetector(
            onDoubleTap: () {
              Navigator.of(context).pushNamed('/secound');
            },
            child: Icon(
              Icons.menu,
              color: Colors.white,
            )),
      ),
    );
  }
}

int index1 = 0;
