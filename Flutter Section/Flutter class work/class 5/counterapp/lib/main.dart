// import 'package:counterapp/counter.dart';

// import 'package:counterapp/Class6/Screens/index.dart';
import 'package:counterapp/class7/class7.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// import 'firebase_options.dart';

// import 'clas5/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Class7(),
    );
  }
}
