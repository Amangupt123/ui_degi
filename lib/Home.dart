// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

    return Scaffold(
      body: Column(
        children: [
          // Container(height: MediaQuery.of(context).size.height*0.3,
          // width: MediaQuery.of(context).size.width,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage(
          //         "assets/image/Rectangle 73.png",
          //       ),fit:BoxFit.fitWidth
          //     )
          //   ),
          // ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/image/Rectangle 73.png"), fit: BoxFit.fitWidth)),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 130),
                      decoration: BoxDecoration(
                        color: Color(0xff28527B),
                        border: Border.all(width: 1, color: const Color(0xff28527B)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      // width: 296,
                      // height: 101,
                      width: MediaQuery.of(context).size.width * 0.95,
                      height: MediaQuery.of(context).size.height * 0.16,
                      //color: Colors.white,
                      child: Column(
                        children: [
                          const SizedBox(height: 4),
                          const Text(
                            "Time left for Next Quiz ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const SizedBox(height: 34),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(width: MediaQuery.of(context).size.width * 0.07),
                              Column(
                                children: [
                                  Text(
                                    "$days",
                                    style:
                                        const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
                                  ),
                                  Text(
                                    "Days",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xffFFFFFF).withOpacity(0.6)),
                                  ),
                                ],
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                              Text(
                                ":",
                                style: TextStyle(fontSize: 20, color: Color(0xffD8D8D8)),
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                              Column(
                                children: [
                                  Text(
                                    "$hours",
                                    style:
                                        const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
                                  ),
                                  Text(
                                    "Hours",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xffFFFFFF).withOpacity(0.6),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                              Text(
                                ":",
                                style: TextStyle(fontSize: 20, color: const Color(0xffD8D8D8).withOpacity(0.8)),
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                              Column(
                                children: [
                                  Text(
                                    "$minutes",
                                    style:
                                        const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
                                  ),
                                  Text(
                                    "Mins",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xffFFFFF).withOpacity(0.6),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                              Text(
                                ":",
                                style: TextStyle(fontSize: 20, color: const Color(0xffD8D8D8).withOpacity(0.8)),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.03,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "$seconds",
                                    style:
                                        const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
                                  ),
                                  Text(
                                    "Sec",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xffFFFFF).withOpacity(0.7),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.07,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text.rich(
                      TextSpan(
                        children: const [
                          TextSpan(text: "How to "),
                          TextSpan(
                            text: "Play a Quiz",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: const [
                    //     Text(
                    //       "How to ",
                    //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    //     ),
                    //     Text(
                    //       "Play a Quiz",
                    //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    //     )
                    //   ],
                    // ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Positioned(
                left: 26,
                top: 104,
                child: SizedBox(
                  height: 40,
                  child: Image.asset("assets/image/crown.png"),
                ),
              ),
              const SizedBox(height: 10),
            ],
          )
        ],
      ),
      
    );
  }
}
