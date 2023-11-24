import 'package:counterapp/Class6/Screens/account.dart';
import 'package:counterapp/Class6/Screens/home1.dart';
import 'package:counterapp/Class6/Screens/setting.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),),
  
      drawer: Drawer(
        child:  Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: UserAccountsDrawerHeader(accountName: Text("Abdullah"), accountEmail: Text("abc@gmail.com"),currentAccountPicture: CircleAvatar(
                
              child: Text("A"),
          
            ),
            otherAccountsPicturesSize: Size.square(50.0),)),

            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> NewHome()));
              },
              title: Text("Home"),
              leading: Icon(
                Icons.home,
                color: Colors.blue,
              ),
            ),
            ListTile(
               onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> Account()));
              },
              title: Text("Account"),
              leading: Icon(
                Icons.account_box_outlined,
                color: Colors.blue,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> SettingView()));
              },
              title: Text("Setting"),
              leading: Icon(
                Icons.settings,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
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
                "Welcome to my App",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // Center(
          //   child: Container(
          //     padding: EdgeInsets.only(top: 50),
          //     child: Text(
          //       "You can easily manage all of your daily",
          //       style: TextStyle(color: Colors.white),
          //     ),
          //   ),
          // ),
          // Center(
          //   child: Container(
          //     // padding: EdgeInsets.only(top: 50),
          //     child: Text(
          //       "task in DoMe for free",
          //       style: TextStyle(color: Colors.white),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (BuildContext context) => Bording2View()),
                    //     );
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



