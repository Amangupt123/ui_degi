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
      appBar: AppBar(backgroundColor: Colors.transparent, shadowColor: Colors.transparent, elevation: 0),
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
                top: 240,
                left: 140,
                child:  RichText(
                  text: TextSpan(text: "   60", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700, color: Colors.white), children: [
                TextSpan(text: "\n Your score", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white))
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
          Container(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  const Text(
                    '25',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff1DBC19)),
                  ),
                  Text("Total Winner ", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xff000000)))
                ],
              ),
              const VerticalDivider(
                color: Color(0xff000000),
                thickness: 0.50,
              ),
              SizedBox(),
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 45)),
                  const Text('\u{20B9}${100}',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffFB9633),
                      )),
                  Text("Prize Money", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Color(0xff000000))),
                  Text("You win", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff727272)))
                ],
              )
            ]),
            height: 150,
            width: 370,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffDDDDDD), width: 2),
              borderRadius: BorderRadius.circular(28),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Color(0xffFC942D)),
                  child: Image.asset(
                    'assets/image/Icon - Home@3x.png',
                    scale: 3,
                  )),
              // SizedBox(width: 1,),
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
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Home", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff505050))),
              Text("Leaderboard", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff505050)))
            ],
          ),
        ]),
      ),
    );
  }
}
