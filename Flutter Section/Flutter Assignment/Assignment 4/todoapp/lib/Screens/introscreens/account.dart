import 'package:flutter/material.dart';
import 'package:todoapp/Screens/loginscreens/login.dart';
import 'package:todoapp/Screens/loginscreens/signup.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SizedBox(
            height: 60,
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              "Welcome to UpTodo",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              child: Text(
                "Please login to your account or create",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Center(
            child: Container(
              child: Text(
                "new account to continue",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginView()));
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Color.fromARGB(255, 128, 149, 238),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SignupView()));
              },
              child: Text(
                "Create Account",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Color.fromARGB(255, 128, 149, 238),
                  ),
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
