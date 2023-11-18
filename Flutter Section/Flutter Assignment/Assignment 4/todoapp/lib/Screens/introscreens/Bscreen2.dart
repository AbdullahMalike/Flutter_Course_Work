import 'package:flutter/material.dart';
import 'package:todoapp/Screens/introscreens/Bscreen3.dart';
import 'package:todoapp/Screens/introscreens/onboarding1.dart';

class Bording2View extends StatelessWidget {
  const Bording2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Stack(
            children: [
              Positioned(
                top: 30,
                left: 10,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "SKIP",
                      style: TextStyle(color: Colors.grey),
                    )),
              ),
              Container(
                width: double.infinity,
                height: 450,
                child: Image.asset("assets/pic2.png"),
              ),
            ],
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 0),
              child: Text(
                "Create daily routine",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "In uptodo you can create your",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Center(
            child: Container(
              // padding: EdgeInsets.only(top: 50),
              child: Text(
                "personalized routine to stay productive",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  OnboardingView()));
                    },
                    child: Text(
                      "BACK",
                      style: TextStyle(color: Colors.grey),
                    )),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => B3View()));
                  },
                  child: Text(
                    "NEXT",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor:
                          const Color.fromARGB(255, 128, 149, 238)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
