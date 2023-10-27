import 'package:ecommerce_app/successfull.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: Container(
                  child: Text(
                    "Fashions",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Text(
                    "My Life My Style",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Create an new account",
                    style: TextStyle(color: Colors.black38),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: UnderlineInputBorder(),
                    hintText: "User Name",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    border: UnderlineInputBorder(),
                    hintText: "Email",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: UnderlineInputBorder(),
                      hintText: "Password",
                      suffixIcon: Icon(Icons.visibility_off)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: UnderlineInputBorder(),
                      hintText: "Confirm Password",
                      suffixIcon: Icon(Icons.visibility_off)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.check_box_outline_blank),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "By creating an account you have to agree with \nour term & conditions.",
                      style: TextStyle(color: Colors.black38),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    SuccessfullView()));
                      },
                      child: Text("Login"),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white),
                    ),
                  ),
                ),
              )
            ])),
      )),
    );
  }
}
