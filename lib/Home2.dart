import 'dart:async';

import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  static const duration = Duration(seconds: 1);

  final eventTime = DateTime.parse('2021-01-09 03:41:00');

  // int timeDiff = eventTime.difference(DateTime.now()).inSeconds;
  int timeDiff = DateTime.parse('2022-05-30 03:41:00').difference(DateTime.now()).inSeconds;
  bool isActive = true;

  Timer? timer;

  void timerFunc() {
    if (timer == null) {
      timer = Timer.periodic(duration, (Timer t) {
        handleTick();
      });
    }
  }
  @override
   void initState() {
    timerFunc();
    super.initState();
  }

  @override
  void dispose() {
    if (timer != null) {
      timer!.cancel();
    }
    super.dispose();
  }

  void handleTick() {
    if (timeDiff > 0) {
      if (mounted) {
        if (isActive) {
          setState(() {
            if (eventTime != DateTime.now()) {
              timeDiff = timeDiff - 1;
            } else {
              print('Times up!');
              //Do something
            }
          });
        }
      }
    }
  }
  Widget build(BuildContext context) {
    int days = timeDiff ~/ (24 * 60 * 60) % 24;
    int hours = timeDiff ~/ (60 * 60) % 24;
    int minutes = (timeDiff ~/ 60) % 60;
    int seconds = timeDiff % 60;
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.ac_unit),
        actions: [Icon(Icons.abc_outlined)],
      ),
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/Rectangle 73.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: "How to "),
                  TextSpan(
                    text: "Play a Quiz",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 25,
                childAspectRatio: 100 / 80,
              ),
              children: [
                Container(
                  color: Colors.greenAccent,
                ),
                Container(
                  color: Colors.greenAccent,
                ),
                Container(
                  color: Colors.greenAccent,
                ),
                Container(
                  color: Colors.greenAccent,
                ),
              ],
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
            )
          ],
        ),
      ),
    );
  }
}
