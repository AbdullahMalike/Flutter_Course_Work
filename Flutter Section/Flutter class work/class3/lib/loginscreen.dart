import 'package:class3/signup.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

// onclickButton(){
//   var email = email
// }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller =
        new TextEditingController(); // ye class text ko control kre gi jo hm textfield me data likhy gy
    TextEditingController passcontroller = new TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            SizedBox(
              height: 50,
            ),
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.red,
                  ),
                  border: OutlineInputBorder(),
                  hintText: "Enter Email"),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passcontroller,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.red,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.red,
                  ),
                  border: OutlineInputBorder(),
                  hintText: "Enter Password"),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.topRight,
              child: Text("Forget Password ?"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double
                  .infinity, // ye hr screen ke hisab se width set kr leta hai
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  if (emailcontroller.text.contains("@") &&
                      emailcontroller.text.contains(".com")) {
                    print("Email: ${emailcontroller.text}");
                    print("Password : ${passcontroller.text}");
                  } else {
                    print("Incorrect Email");
                  }
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.black),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Signup()));
              },
              child: Text("Don't have an account? SignUp"),
            ),
          ],
        ),
      ),
    );
  }
}
