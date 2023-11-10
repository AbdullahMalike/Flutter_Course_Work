import 'package:flutter/material.dart';
import 'package:todoapp/Screens/introscreens/firstpage.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeView(),
    );
  }
}
