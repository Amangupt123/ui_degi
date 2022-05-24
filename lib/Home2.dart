import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_degi/Quiz.dart';

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
        leading: SvgPicture.asset(
          "assets/image/Group 6@3x.svg",
          height: 5,
          width: 5,
          fit: BoxFit.scaleDown,
        ),
        actions: [Image.asset("assets/image/iiiiii.png")],
      ),
      body: SizedBox(
        height: screenSize.height,
        width: screenSize.width,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.32,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/group 74721@3x.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [ Image.asset("assets/image/Vector@2x.png",scale: 2,),
                      Padding(padding: EdgeInsets.only(left: 5)
                      ),
                        Text(
                          "How to ",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      InkWell(onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Quiz()));
                      },
                          child: Text(
                            "Play a Quiz",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900,decoration: TextDecoration.underline,),
                          ),
                        )
                      ],
                    ),
                // const Text.rich(
                //   TextSpan(
                //     children: [ 
                //       TextSpan(text: "How to ",),
                      
                //       TextSpan(
                //         text: "Play a Quiz",
                //         style: TextStyle(fontWeight: FontWeight.bold),
                //       ),
                      
                //     ],
                //   ),
                // ),
                SizedBox(height: 15),
                GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 15,
                    childAspectRatio: 100 / 80,
                  ),
                  children: [
                    Container(decoration: BoxDecoration(
                         image: DecorationImage(
                      image: AssetImage("assets/image/live_quiz.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  )
                    ),
                    Container(
                      decoration: BoxDecoration(
                         image: DecorationImage(
                      image: AssetImage("assets/image/leaderboard.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  )
                    ),
                    Container(
                    decoration: BoxDecoration(
                         image: DecorationImage(
                      image: AssetImage("assets/image/statistics@2x.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  )
                    ),
                    Container(
                     decoration: BoxDecoration(
                         image: DecorationImage(
                      image: AssetImage("assets/image/Group 5268.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  )
                    ),
                  ],
                  padding: EdgeInsets.all(10),
                  shrinkWrap: true,
                ),
                SizedBox(
                  height: 0,
                ),
                Container(
                  height: 90,
                  width: 370,
                  padding: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(                    width: 370,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      border: Border.all(
                        color: Color(0xFFDDDDDD),
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         
                        Column(children: [
                          SizedBox(height: 25,),
                          Text("    Your subscription will be Ended",style: TextStyle(fontSize: 14,
                           fontWeight: FontWeight.w500, color: const Color(0xff505050)),
                            ),
                          Text("04 May 2022",style: TextStyle(fontSize: 18,
                           fontWeight: FontWeight.w600, color: const Color(0xff000000))),
                        ],),
                        ElevatedButton(style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
  ), onPressed: () {  },
                         child: Text("Buy Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,),))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(children: [
              SizedBox(
                height: 20,
              ),

              Container(
                margin: EdgeInsets.only(top: 130),
                decoration: BoxDecoration(
                  color: Color(0xff28527B),
                  border: Border.all(width: 1, color: const Color(0xff28527B)),
                  borderRadius: BorderRadius.circular(8),
                ),
                // width: 296,
                // height: 101,
                width: MediaQuery.of(context).size.width * 0.92,
                height: MediaQuery.of(context).size.height * 0.16,
                //color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 4),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [ SvgPicture.asset("assets/image/Group 74440.svg",),
                      SizedBox(height: 3,width: 4,),
                        const Text(
                          "Time left for Next Quiz ",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(height: 34,),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width * 0.07),
                        Column(
                          children: [
                            Text(
                              "$days",
                              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
                            ),
                            Text(
                              "Days",
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: const Color(0xffFFFFFF).withOpacity(0.6)),
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
                              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
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
                              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
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
                              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
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
                          width: MediaQuery.of(context).size.width * 0.09,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              
            //  SizedBox(height: 10),
            
            ]),
             SizedBox(height: 50),
              Positioned(
                left: 5,
                top: 132,
                child: SizedBox(
                  height: 30,
                  child: Image.asset("assets/image/crown.png"),
                ),
              ),
              const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
