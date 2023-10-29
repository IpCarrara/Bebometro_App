import 'package:flutter/material.dart';

import 'package:bebometro/bebometro.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 182, 24),
                Color.fromARGB(255, 240, 146, 23),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const Bebometro(),
        ),
      ),
    ),
  );
}
