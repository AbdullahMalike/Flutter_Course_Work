// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My App",
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              getchatui(
                  ("https://img.freepik.com/premium-photo/bangkok-thailand-08082022-lamborghini-luxury-super-car-fast-sports-premium-lighting-background-3d-illustration_67092-1599.jpg"),
                  Colors.grey,
                  "AA",
                  "Abdullah Akram",
                  "How are you?",
                  "5:55"),
              getchatui(
                  ("https://img.freepik.com/free-photo/sports-car-driving-asphalt-road-night-generative-ai_188544-8052.jpg"),
                  Colors.yellow,
                  "SA",
                  "Saadullah Akram",
                  "Kaha ho?",
                  "10:20")
              // Image.asset("assets/car1.webp"),
              // Image.asset("assets/car2.webp"),
              // getbox(
              //     "https://img.freepik.com/premium-photo/bangkok-thailand-08082022-lamborghini-luxury-super-car-fast-sports-premium-lighting-background-3d-illustration_67092-1599.jpg"),
              // getbox(
              //     "https://img.freepik.com/free-photo/sports-car-driving-asphalt-road-night-generative-ai_188544-8052.jpg"),
              // getbox(
              //     "https://www.topgear.com/sites/default/files/2022/07/13.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}

getbox(String url) {
  return Container(
    height: 300,
    width: 300,
    decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("$url")),
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(1000))),
  );
}

getchatui(String url, Color cColor, String avatar, String title,
    String subTitle, String trailing) {
  return ListTile(
    tileColor: Colors.grey.shade200,
    leading: CircleAvatar(
      backgroundColor: cColor,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(500)),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage("$url"))),
      ),
      // child: Text(
      //   "$avatar",
      //   style: TextStyle(fontSize: 20, color: Colors.white),
      // ),
    ),
    title: Text("$title"),
    subtitle: Text("$subTitle"),
    trailing: Text("$trailing"),
  );
}
