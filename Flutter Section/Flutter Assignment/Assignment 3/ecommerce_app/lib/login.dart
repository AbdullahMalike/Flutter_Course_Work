import 'package:ecommerce_app/constrants/constant.dart';
import 'package:ecommerce_app/successfull.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) {
    String enteredemail = emailController.text;
    String password = passwordController.text;

    if (enteredemail == Constant.email &&
        password == Constant.password &&
        enteredemail.contains("@") &&
        enteredemail.contains(".") &&
        enteredemail != "" &&
        password != "") {
      print(enteredemail);
      print(password);

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => SuccessfullView()));
    } else {
      print("Wrong email or password");
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                      "Welcome!",
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
                      "please login or sign up to continue our app",
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
                    controller: emailController,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: UnderlineInputBorder(),
                      hintText: "Email Address",
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
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          login(context);
                        },
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    thickness: 1,
                    color: Colors.black38,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                        icon: Icon(
                          Icons.facebook,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                        label: Text("Continue with Facebook"),
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Color(0xFF1877F2)),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.black,
                        ),
                        // child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white),
                        label: Text("Continue with Google"),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.apple,
                          color: Colors.black,
                        ),
                        // child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.white),
                        label: Text("Continue with Apple"),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
