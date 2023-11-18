import 'package:flutter/material.dart';

import 'Bscreen2.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

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
                child: Image.asset("assets/pic1.png"),
              ),
            ],
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 0),
              child: Text(
                "Manage your tasks",
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
                "You can easily manage all of your daily",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Center(
            child: Container(
              // padding: EdgeInsets.only(top: 50),
              child: Text(
                "task in DoMe for free",
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
                    onPressed: () {},
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
                            builder: (BuildContext context) => Bording2View()));
                  },
                  child: Text(
                    "NEXT",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Color.fromARGB(255, 128, 149, 238)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
