import 'package:flutter/material.dart';

class ConstantView {
  showsnackBar(context, text) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("$text")));
  }
}
