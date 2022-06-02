import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_degi/details.dart';
//import 'package:ui_degi/j_contain.dart';

class Leaderboard extends StatefulWidget {
  Leaderboard({Key? key}) : super(key: key);

  @override
  State<Leaderboard> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Leaderboard",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: SvgPicture.asset(
          "assets/image/meanubar@2x.svg",
          height: 5,
          width: 5,
          fit: BoxFit.scaleDown,
        ),
        actions: [
          InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Details())),
            child: Container(
              child: Center(
                child: Container(
                  color: Colors.white.withOpacity(.4),
                  padding: EdgeInsets.all(2),
                  child: Icon(Icons.arrow_right_alt),
                ),
              ),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/top_header@3x.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // give the tab bar a height [can change hheight to preferred height]
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffFC942D),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                    child: TabBar(
                      controller: _tabController,

                      // give the indicator a decoration (color and border radius)
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: Colors.white,
                          border: Border.all(width: 4.5, color: Colors.orange)),
                      labelColor: Colors.orange,
                      unselectedLabelColor: Colors.white,

                      tabs: const [
                        // first tab [you can add an icon using the icon property]
                        Tab(
                          text: 'Daily',
                        ),

                        // second tab [you can add an icon using the icon property]
                        Tab(
                          text: 'Monthly',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    height: 174,
                    width: MediaQuery.of(context).size.width * 335,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 125,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Stack(
                                alignment: Alignment.topLeft,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                        color: Colors.orange,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage("assets/image/Ellipse 4@3x.png"),
                                          fit: BoxFit.fitWidth,
                                        )),
                                  ),
                                  Positioned(
                                      top: 21,
                                      right: -22,
                                      child: Image.asset(
                                        'assets/image/center clip79@3x.png',
                                        scale: 2.7,
                                      ))
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.01,
                              ),
                              const Text(
                                'Alexa key',
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff000000)),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.0,
                              ),
                              const Text('837 pts', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 145,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Stack(
                                alignment: Alignment.topCenter,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: const BoxDecoration(
                                        color: Colors.orange,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage("assets/image/Ellipse 3@3x.png"),
                                          fit: BoxFit.fitWidth,
                                        )),
                                  ),
                                  Positioned(
                                      top: 17,
                                      right: -17,
                                      child: Image.asset(
                                        'assets/image/center clip79@3x.png',
                                        scale: 2.5,
                                      ))
                                ],
                              ),
                              const Text('Albertus Muller',
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                              const Text('840 pts', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 125,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Stack(
                                alignment: Alignment.topRight,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    decoration: const BoxDecoration(
                                      color: Colors.orange,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage("assets/image/Ellipse@3x.png"),
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      top: 9,
                                      right: -19,
                                      child: Image.asset(
                                        'assets/image/sticker1@3x.png',
                                        scale: 2.7,
                                      ))
                                ],
                              ),
                              Text('Jesselyn Eva', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                              Text('823 pts', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 66,
                itemBuilder: (context, i) => const JContain(),
              ),
            ),
            const SizedBox(height: 2),
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.13,
              decoration: const BoxDecoration(
                color: Colors.red,
                image: DecorationImage(image: AssetImage("assets/image/bottem50@3x.png"), fit: BoxFit.cover),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.06,
                  ),
                  const CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xffDBDBDB),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffFFFEFE),
                      child: Text("50",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff000000))),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  const CircleAvatar(
                    backgroundColor: Color(0xffFFFEFE),
                    radius: 29,
                    backgroundImage: AssetImage("assets/image/Bg50textfor3x.png"),
                  ),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                        width: MediaQuery.of(context).size.width * 0.3,
                      ),
                      Text("Alex Carry",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF))),
                      Text("250 pt",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xffFFFFFF)))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JContain extends StatelessWidget {
  const JContain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xffDBDBDB),
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xffFFFEFE),
              child: Text("4", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff000000))),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
          const CircleAvatar(
            backgroundColor: Color(0xffFFFEFE),
            radius: 35,
            backgroundImage: AssetImage("assets/image/Bg@3x.png"),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.07,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Jesselyn Eva", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              Text("780 pts", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500))
            ],
          )
        ],
      ),
      height: 100,
      width: 34,
      margin: EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color(0xffF7F7F4),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(color: Color(0xffDDDDDD), spreadRadius: 1),
        ],
      ),
    );
  }
}
