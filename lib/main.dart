import 'package:exam_clock_app/Screens/analog.dart';
import 'package:exam_clock_app/Screens/digital.dart';
import 'package:exam_clock_app/Screens/splash.dart';
import 'package:exam_clock_app/Screens/timer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        "/": (context) => const intro_(),
        "one": (context) => const Digital_(),
        "two": (context) => const Analog_(),
        "three": (context) => const Timer_(),
      },
    ),
  );
}
