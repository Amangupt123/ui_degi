import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

import 'Quiz.dart';
//import 'package:ui_degi/Quiz.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  VideoPlayerController? _controller;

  static const duration = Duration(seconds: 1);

  final eventTime = DateTime.parse('2021-01-09 03:41:00');
  int timeDiff = DateTime.parse('2022-07-31 03:41:00').difference(DateTime.now()).inSeconds;
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
        leading: Builder(builder: (context) {
          return GestureDetector(
            child: InkWell(
              onTap: (() {
                Scaffold.of(context).openDrawer();
              }),
              child: SvgPicture.asset(
                "assets/image/Group 6@3x.svg",
                height: 5,
                width: 5,
                fit: BoxFit.scaleDown,
              ),
            ),
          );
        }),
        actions: [Image.asset("assets/image/iiiiii.png")],
        automaticallyImplyLeading: false,
      ),
      drawer: Drawer(
          child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
            Stack(
              alignment: Alignment.topRight,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.26,
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("assets/image/dravercontainer 1@3x.png"),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.06,
                        ),
                        Text("Alex Carry", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xff000000)))
                      ],
                    ),
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/image/drawebackground.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  right: -15,
                  child: SvgPicture.asset(
                    'assets/image/cut 14@2x.svg',
                    // scale: 2.7,
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            ListTile(
              leading: SvgPicture.asset("assets/image/home 3@3x.svg"),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff000000)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            ListTile(
              leading: SvgPicture.asset("assets/image/edit.svg"),
              title: Text(
                "Edit Profile",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff000000)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            ListTile(
              leading: SvgPicture.asset("assets/image/wallet.svg"),
              title: Text(
                "Kitty/Wallet",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff000000)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            ListTile(
              leading: SvgPicture.asset("assets/image/syllabus@3x.svg"),
              title: Text(
                "Syllabus",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff000000)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            ListTile(
              leading: SvgPicture.asset("assets/image/practictest.svg"),
              title: Text(
                "Practice Test",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff000000)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            ListTile(
              leading: SvgPicture.asset("assets/image/setting.svg"),
              title: const Text(
                "Settings",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff000000)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            ListTile(
              leading: SvgPicture.asset("assets/image/Coupon@2x.svg"),
              title: const Text(
                "Referral and Coupon Code",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff000000)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            ListTile(
              leading: SvgPicture.asset("assets/image/logout@2x.svg"),
              title: const Text(
                "Logout",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff000000)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ])),
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
                  children: [
                    Image.asset(
                      "assets/image/Vector@2x.png",
                      scale: 2,
                    ),
                    Padding(padding: EdgeInsets.only(left: 5)),
                    const Text(
                      "How to ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Quiz()));
                      },
                      child: const Text(
                        "Play a Quiz",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15),
                GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 15,
                    childAspectRatio: 100 / 80,
                  ),
                  children: [
                    InkWell(
                      onTap: (() {
                        showGeneralDialog(
                          context: context,
                          pageBuilder: (BuildContext buildContext, Animation<double> animation, Animation<double> secondaryAnimation) {
                            return BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: NewWidget(),
                            );
                          },
                          barrierDismissible: true,
                          barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
                          barrierColor: Colors.transparent,
                          transitionDuration: const Duration(milliseconds: 200),
                        );
                      }),
                      child: Container(
                          decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/image/live_quiz@3x.png"),
                          fit: BoxFit.fitWidth,
                        ),
                      )),
                    ),
                    Container(
                        decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image/leaderboard@3x.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    )),
                    Container(
                        decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image/statistics@3x.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    )),
                    Container(
                        decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/image/Group 5@3x.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    )),
                  ],
                  padding: EdgeInsets.all(9),
                  shrinkWrap: true,
                ),
                const SizedBox(
                  height: 26,
                ),
                Container(
                  height: 90,
                  width: 370,
                  padding: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    width: 370,
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
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                "Your subscription will be Ended",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff505050)),
                              ),
                              SizedBox(height: 6),
                              Text("04 May 2022", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xff000000))),
                            ],
                          ),
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
                                shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(9),
                                  bottomLeft: Radius.circular(9),
                                )))),
                            onPressed: () {},
                            child: const Text(
                              "Buy Now",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(children: [
              const SizedBox(
                height: 20,
              ),

              Container(
                margin: EdgeInsets.only(top: 100),
                decoration: BoxDecoration(
                  // color: Color(0xff28527B),
                  border: Border.all(width: 1, color: const Color(0xff28527B)),
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage('assets/image/Group 74454.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                // width: 296,
                // height: 101,
                width: MediaQuery.of(context).size.width * 0.93,
                height: MediaQuery.of(context).size.height * 0.21,
                //color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/image/Group 74440.svg",
                        ),
                        const SizedBox(
                          height: 3,
                          width: 4,
                        ),
                        const Text(
                          "Time left for Next Quiz ",
                          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width * 0.11),
                        Column(
                          children: [
                            Text(
                              "$days",
                              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
                            ),
                            Text(
                              "Days",
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: const Color(0xffFFFFFF).withOpacity(0.6)),
                            ),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                        const Text(
                          ":",
                          style: TextStyle(fontSize: 35, height: 1, fontWeight: FontWeight.w500, color: Color(0xffD8D8D8)),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                        Column(
                          children: [
                            Text(
                              "$hours",
                              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
                            ),
                            Text(
                              "Hours",
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: const Color(0xffFFFFFF).withOpacity(0.6)),
                            ),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                        const Text(
                          ":",
                          style: TextStyle(fontSize: 35, height: 1, fontWeight: FontWeight.w400, color: Color(0xffD8D8D8)),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                        Column(
                          children: [
                            Text(
                              "$minutes",
                              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
                            ),
                            Text(
                              "Mins",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffFFFFFF).withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                        const Text(
                          ":",
                          style: TextStyle(
                            fontSize: 35,
                            height: 1,
                            color: Color(0xffD8D8D8),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Column(
                          children: [
                            Text(
                              "$seconds",
                              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white),
                            ),
                            Text(
                              "Sec",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffFFFFFF).withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
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
              left: 4,
              top: 105,
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

class NewWidget extends StatefulWidget {
  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  VideoPlayerController? _controller;
  @override
  void initState() {
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    )..initialize().then((_) {
        setState(() {
          _controller!.play();
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Image.asset('assets/image/Ellipse 14@3x.png', scale: 2.5),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Healthy Tasty',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Sponsored',
                        style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                child: _controller != null
                    ? _controller!.value.isInitialized
                        ? AspectRatio(
                            aspectRatio: _controller!.value.aspectRatio,
                            child: VideoPlayer(
                              _controller!,
                            ),
                          )
                        : Container()
                    : CircularProgressIndicator(),
                width: 410,
                height: 300,
                color: Color(0xffFFFFFF)),
          ],
        ),
      ),
    );
  }
}
