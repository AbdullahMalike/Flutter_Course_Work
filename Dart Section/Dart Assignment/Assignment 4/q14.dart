import 'dart:io';

void main() {
  List<Map<String, String>> userCredentials = [
    {'email': 'abdullahmalikae2002@gmail.com', 'password': '123'},
    {'email': 'abc@gmail.com', 'password': '1234'},
    {'email': 'xyz@gmail.com', 'password': '12345'},
  ];
  bool isLoggedIn = false;

  while (!isLoggedIn) {
    print("Enter Email: ");
    String? entered_email = stdin.readLineSync();
    print("Enter Password: ");
    String? entered_password = stdin.readLineSync();

    for (int i = 0; i < userCredentials.length; i++) {
      if (entered_email == userCredentials[i]["email"] &&
          entered_password == userCredentials[i]["password"]) {
        isLoggedIn = true;
        print("Successfully Login :)");
      }
    }
    if (!isLoggedIn) {
      print("Wrong email and password! Try again");
    }
  }
}
