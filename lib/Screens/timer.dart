import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Timer_ extends StatefulWidget {
  const Timer_({super.key});

  @override
  State<Timer_> createState() => _Timer_State();
}

class _Timer_State extends State<Timer_> {
  int s = 0;
  int m = 0;
  int h = 0;
  bool play = false;
  bool stop = false;

  void initState() {
    // TODO: implement initState
    super.initState();
    if (play == true) timer();
  }

  @override
  timer() async {
    await Future.delayed(
      const Duration(seconds: 1),
      () {
        setState(() {
          s++;
          if (s >= 59) {
            s = 0;
            m++;
          }
        });
      },
    );
    if (play == true) {
      timer();
    }
  }

  Widget build(BuildContext context) {
    List<String> flag = [];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Timer",
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
              width: 360,
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
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    ...flag.map(
                      (e) => Text(
                        "$e",
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 360,
              height: 200,
              alignment: Alignment.center,
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
              child: Text(
                "$h : $m : $s",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 67,
                  color: Colors.grey,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                      setState(() {
                        play = !play;
                      });
                    },
                    icon: (play == false)
                        ? const Icon(
                            Icons.pause,
                            color: Colors.grey,
                          )
                        : const Icon(
                            Icons.play_arrow,
                            color: Colors.grey,
                          ),
                  ),
                ),
                const SizedBox(width: 30),
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
                        String save = "$h : $m : $s ";
                        log(save);
                        flag.add(save);
                      });
                    },
                    icon: const Icon(
                      Icons.flag_circle,
                      color: Colors.grey,
                    ),
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
