import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todoapp/Screens/Index%20Screens/index.dart';

import '../Constant/Constant.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login(BuildContext context) {
    String enteredusername = usernameController.text;
    String password = passwordController.text;

    if (enteredusername == Constant.username &&
        password == Constant.password &&
        enteredusername != "" &&
        password != "") {
      print("Successfully Login");
      print(enteredusername);
      print(password);

      Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) => IndexView()),
      );
    } else {
      print("Wrong email or password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.only(left: 16),
                  //   child: Align(
                  //     alignment: Alignment.centerLeft,
                  //     child: Text(
                  //       "please login or sign up to continue our app",
                  //       style: TextStyle(color: Colors.grey),
                  //     ),
                  //   ),
                  // ),

                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "User Name",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 1, color: Colors.white)),
                        hintText: "Username",
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Password",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.white,
                        ),
                        hintStyle: TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                        hintText: "Password",
                      ),
                      style: TextStyle(color: Colors.white),
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
                              shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color:
                                          Color.fromARGB(255, 128, 149, 238))),
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  Color.fromARGB(255, 128, 149, 238)),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.white,
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
                          label: Text(
                            "Login with Facebook",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Color.fromARGB(255, 128, 149, 238),
                                  )),
                              backgroundColor: Colors.transparent),
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
                            color: Colors.white,
                          ),
                          // child: Text("Login"),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                    color: Color.fromARGB(255, 128, 149, 238),
                                    width: 2,
                                  )),
                              // foregroundColor: Colors.black,
                              backgroundColor: Colors.transparent),

                          label: Text(
                            "Login with Google",
                            style: TextStyle(color: Colors.white),
                          ),
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
                            color: Colors.white,
                          ),
                          // child: Text("Login"),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color: Color.fromARGB(255, 128, 149, 238),
                                      width: 2)),
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.transparent),
                          label: Text(
                            "Login with Apple",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
