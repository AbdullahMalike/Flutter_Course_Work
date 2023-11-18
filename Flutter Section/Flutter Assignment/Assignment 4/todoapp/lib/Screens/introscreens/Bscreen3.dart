import 'package:flutter/material.dart';
import 'package:todoapp/Screens/introscreens/Bscreen2.dart';
import 'package:todoapp/Screens/introscreens/account.dart';

class B3View extends StatelessWidget {
  const B3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Stack(
            children: [
              Positioned(
                top: 20,
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
                child: Image.asset("assets/pic3.png"),
              ),
            ],
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 0),
              child: Text(
                "Organize your tasks",
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
                "You can oganize your daily tasks by",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Center(
            child: Container(
              // padding: EdgeInsets.only(top: 50),
              child: Text(
                "adding your tasks into separate categories",
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
                                  Bording2View()));
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
                            builder: (BuildContext context) => AccountView()));
                  },
                  child: Text(
                    "GET STARTED",
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
