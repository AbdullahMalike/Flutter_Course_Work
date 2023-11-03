import 'package:ecommerce_app/constrants/constant.dart';
import 'package:ecommerce_app/login.dart';
import 'package:ecommerce_app/successfull.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirm_passController = TextEditingController();

  void signup(BuildContext context) {
    String enteredusername = usernameController.text;
    String enteredemail = emailController.text;
    String entered_password = passwordController.text;
    String entered_confirmpass = confirm_passController.text;

    Constant.name = enteredusername;
    Constant.email = enteredemail;
    Constant.password = entered_password;
    Constant.confirm_password = entered_confirmpass;
    if (enteredemail.contains("@") &&
        enteredemail.contains(".") &&
        enteredusername != "" &&
        enteredemail != "" &&
        entered_password != "" &&
        entered_confirmpass != "") {
      print(enteredusername);
      print(enteredemail);
      print(entered_password);
      print(entered_confirmpass);

      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => LoginView()));
    } else {
      print("Write correct Syntex of email @ and . ");
    }
  }

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
                  controller: usernameController,
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
                  controller: emailController,
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
                  controller: passwordController,
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
                  controller: confirm_passController,
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
                        signup(context);
                      },
                      child: Text("Signup"),
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
