import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Digital_ extends StatefulWidget {
  const Digital_({super.key});

  @override
  State<Digital_> createState() => _Digital_State();
}

class _Digital_State extends State<Digital_> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      const Duration(),
      () {},
    );
  }

  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    Timer(const Duration(seconds: 1), () {
      setState(() {
        now = DateTime.now();
      });
    });

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Digital",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 383,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(23),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 23,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${now.hour} : ${now.minute}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 90,
                        color: Colors.grey),
                  ),
                  const Text(
                    "  PM",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 23,
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('three');
                    },
                    icon: const Icon(
                      Icons.timer,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 23,
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).pushNamed('two');
                      });
                    },
                    icon: const Icon(CupertinoIcons.clock_solid,
                        color: Colors.grey),
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
