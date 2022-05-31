// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        child: Column(children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 392,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/image/top_background@3x.png",
                    ),
                    // fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height*0.3,
                  left: MediaQuery.of(context).size.width*0.33,
                  child: RichText(
                      text: const TextSpan(
                          text: "    60",
                          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, color: Colors.white),
                          children: [
                        TextSpan(
                            text: "\n   Your score",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white))
                      ]))
                      ),
              // RichText(
              //     text: TextSpan(text: "60", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, color: Colors.white), children: [
              //   TextSpan(text: "Your score", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white))
              // ]))
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Your Quiz Rank is  ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              Text(
                "3rd",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.orange),
              )
            ],
          ),
          const SizedBox(height: 25),
          Stack(
            alignment: Alignment.topRight,
            clipBehavior: Clip.none,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '25',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff1DBC19)),
                        ),
                        Text("Total Winner ",
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xff000000)))
                      ],
                    ),
                    const VerticalDivider(color: Color(0xff000000), thickness: 0.5),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          '\u{20B9}${100}',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xffFB9633)),
                        ),
                        const Text("Prize Money",
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xff000000))),
                        const Text("You win",
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff727272)))
                      ],
                    )
                  ],
                ),
                height: 120,
                width: 370,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffDDDDDD), width: 2),
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
              Positioned(top:-32,
              right: -5, child: Image.asset('assets/image/crownn.png.png')),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [SizedBox(width: MediaQuery.of(context).size.width*0.24,),
              Column(
                children: [
                  Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color(0xffFC942D)),
                      child: Image.asset(
                        'assets/image/Icon - Home@3x.png',
                        scale: 3,
                      )),
                      SizedBox(height: 5,),
                                    Text("Home", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff505050))),

                ],
              ),
              // S
              SizedBox(width: 1,),SizedBox(width: MediaQuery.of(context).size.width*0.12,),
              Column(
                children: [
                  Container(
                    height: 72,
                    width: 72,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff5AADFF),
                    ),
                    child: Image.asset(
                      'assets/image/Vector@3x.png',
                      scale: 3,
                    ),
                  ),
                  SizedBox(height: 5,),
                                Text("Leaderboard", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff505050)))

                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
         
        ]),
      ),
    );
  }
}
