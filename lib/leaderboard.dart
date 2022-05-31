import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
        elevation: 0,
      ),
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
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
            const SizedBox(
              height: 8,
            ),
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
                              Text(
                                'Alexa key',
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff000000)),
                              ),
                              Text('837 pts'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 145,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: const BoxDecoration(
                                    color: Colors.orange,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage("assets/image/Ellipse 3@3x.png"),
                                      fit: BoxFit.fitWidth,
                                    )),
                              ),
                              Text('Name'),
                              Text('23 stf'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 125,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
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
                              Text('Name'),
                              Text('23 stf'),
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
              itemCount: 6,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text("numberTruthList"),
                );
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
