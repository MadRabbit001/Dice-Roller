import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 33, 243, 180),
        body: GradientContainer(
          [Color.fromARGB(255, 45, 4, 141), Color.fromARGB(255, 209, 29, 29)],
        ),
      ),
    ),
  );
}
