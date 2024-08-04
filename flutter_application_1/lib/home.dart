import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(title: Text("App",style: TextStyle(color: Colors.white),),
      centerTitle: true,
      backgroundColor: Colors.blue,),
      body: Center(
        child: Container(
          child: Text("Hello"),
        ),
      ),
    );
  }
}