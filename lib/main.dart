import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: GradientContainer(
              Color.fromARGB(255, 3, 37, 65), Color.fromARGB(255, 10, 14, 132)),
        ),
      ),
    ),
  );
}
