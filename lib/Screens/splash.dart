import 'dart:async';

import 'package:flutter/material.dart';

class intro_ extends StatefulWidget {
  const intro_({super.key});

  @override
  State<intro_> createState() => _intro_State();
}

class _intro_State extends State<intro_> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, 'one');
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 700,
              width: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/d8/ae/2e/d8ae2e05282f3182b97475af85a2631c.gif"),
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "CLOCK",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 34,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
