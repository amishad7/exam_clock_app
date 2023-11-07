import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Analog_ extends StatefulWidget {
  const Analog_({super.key});

  @override
  State<Analog_> createState() => _Analog_State();
}

class _Analog_State extends State<Analog_> {
  double sec = 3 * pi / 2;
  int s = 0;
  int m = 0;
  int ho = 0;
  double min = 3 * pi / 2;
  double h = 3 * pi / 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CAPP();
  }

  CAPP() async {
    await Future.delayed(
      const Duration(seconds: 1),
      () {
        setState(() {
          sec += pi / 30;
          s++;
          if (s == 59) {
            m++;
            min += pi / 30;
            if (m == 59) {
              h++;
              h += pi / 30;
            }
          }
        });
      },
    );
    CAPP();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("AnaLog Clock"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //  alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 1.3,
              width: MediaQuery.of(context).size.width / 1.3,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                image: const DecorationImage(
                  image: NetworkImage(
                      "https://www.pngmart.com/files/Analog-Clock-PNG-Clipart.png"),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 24,
                  ),
                ],
              ),
              child: Center(
                child: Stack(
                  children: [
                    Transform.rotate(
                      angle: sec,
                      child: const Divider(
                        endIndent: 160,
                        indent: 60,
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),
                    Transform.rotate(
                      angle: min,
                      child: const Divider(
                        endIndent: 160,
                        indent: 70,
                        thickness: 2,
                        color: Colors.grey,
                      ),
                    ),
                    Transform.rotate(
                      angle: h,
                      child: const Divider(
                        endIndent: 160,
                        indent: 100,
                        thickness: 5,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
