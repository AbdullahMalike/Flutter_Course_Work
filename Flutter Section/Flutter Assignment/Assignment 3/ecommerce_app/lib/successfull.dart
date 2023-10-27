import 'package:flutter/material.dart';

import 'home.dart';

class SuccessfullView extends StatelessWidget {
  const SuccessfullView({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 150,
                    child: Image.asset("assets/tick.png"),
                  ),
                ),
                Container(
                  child: Text(
                    "Successful!",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Text(
                    "You have successfully registered in\nour app and can start working on it.",
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => HomeView()));
                    },
                    child: Text(
                      "Start Shopping",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(), backgroundColor: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
