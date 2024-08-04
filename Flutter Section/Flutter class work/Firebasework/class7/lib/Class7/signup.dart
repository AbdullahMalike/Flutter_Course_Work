import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'const.dart';
import 'home.dart';

class SignUp7 extends StatelessWidget {
  const SignUp7({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController useremail = TextEditingController();
    TextEditingController userpassword = TextEditingController();

    ConstantView constants = ConstantView();

    signup() async {
      try {
        if (!useremail.text.contains("@") || !useremail.text.contains(".")) {
          constants.showsnackBar(context, "Email is incorrect");
        } else if (userpassword.text.length < 6) {
          constants.showsnackBar(
              context, "Password length should be greater then or equal to 6");
        } else {
          FirebaseAuth auth = FirebaseAuth.instance;
          UserCredential credential = await auth.createUserWithEmailAndPassword(
              email: useremail.text, password: userpassword.text);
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) => HomeView()));
        }
      } catch (e) {
        print(e);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: TextField(
                  controller: useremail,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                child: TextField(
                  controller: userpassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    signup();
                  },
                  child: Text("SignUp")),
            ],
          ),
        ),
      ),
    );
  }
}
