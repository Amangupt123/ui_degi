import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:ui_degi/bottesheet.dart';

class Statistics extends StatefulWidget {
  Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text("Statistics", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: SvgPicture.asset("assets/image/arrow29@3x.svg", height: 5, width: 5, fit: BoxFit.scaleDown),
          actions: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    // <-- SEE HERE
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  builder: (_) {
                    return GestureDetector(
                      onTap: () => Navigator.of(context).pop(), // Closing the sheet.
                      child: BottemSheet(),
                    );
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: SvgPicture.asset(
                  "assets/image/kippp@3x.svg",
                ),
              ),
            )
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: 136,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                  image: AssetImage("assets/image/background.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                 
                  Padding(
                    padding: EdgeInsets.only(left: 30)
,                    child: Text(
                      "Total Played Quiz",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Text(
                      "30",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Row(
              //  crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(5)),
                Container(
                    width: 5,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(19), bottomLeft: Radius.circular(19)),
                        color: Colors.orange)),
                Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(9), bottomRight: Radius.circular(9)),
                    color: Colors.white,
                     boxShadow: [
            BoxShadow(
                // color: Colors.black,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(0.1, 0.1), // shadow direction: bottom right
            )
        ],
                    // border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(
                        top: 18,
                      )),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 75),
                            child: Text(
                              "Master Minds",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xff000000)),
                            ),
                          ),
                          Text(
                            "Date:17 Apr 2022",
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff727272)),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffF6FAFF),
                            ),
                            child: DottedBorder(
                                dashPattern: [4, 4, 4, 4],
                                color: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.09,
                                    ),
                                    const Text(
                                      "Your Score is ",
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff000000)),
                                    ),
                                    const Text(
                                      "70",
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff000000)),
                                    )
                                  ],
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text("10", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xff000000))),
                                    Text("Total Questions",
                                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff000000)))
                                  ],
                                ),
                                height: MediaQuery.of(context).size.height * 0.11,
                                width: MediaQuery.of(context).size.width * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xff6D5CFB).withOpacity(0.06),
                                ),
                              )
                            ],
                          ),
                          //  SizedBox(width: ,),
                          Column(
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text("08", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xff0FB469))),
                                    Text("Correct Answer",
                                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff000000)))
                                  ],
                                ),
                                height: MediaQuery.of(context).size.height * 0.11,
                                width: MediaQuery.of(context).size.width * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xff4DE19E).withOpacity(0.06),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text("02", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xffFF4208))),
                                    Text("Wrong Answer",
                                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff000000)))
                                  ],
                                ),
                                height: MediaQuery.of(context).size.height * 0.11,
                                width: MediaQuery.of(context).size.width * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xffFC6739).withOpacity(0.06),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              //  crossAxisAlignment: CrossAxisAlignment.start,
              //  mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.all(5)),
                Container(
                    width: 5,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(19), bottomLeft: Radius.circular(19)),
                        color: Colors.orange)),
                Container(
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(9), bottomRight: Radius.circular(9)),
                    color: Colors.white,
                      boxShadow: [
            BoxShadow(
                // color: Colors.black,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(0.1, 0.1), // shadow direction: bottom right
            )
        ],
                    // border: Border.all(color: Colors.white),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(
                        top: 18,
                      )),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 55),
                            child: Text(
                              "Let's Get Quizzica",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xff000000)),
                            ),
                          ),
                          Text(
                            "Date:16 Apr 2022",
                            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff727272)),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xffF6FAFF),
                            ),
                            child: DottedBorder(
                                dashPattern: [4, 4, 4, 4],
                                color: Colors.grey,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: MediaQuery.of(context).size.height * 0.09,
                                    ),
                                    const Text(
                                      "Your Score is ",
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff000000)),
                                    ),
                                    const Text(
                                      "60",
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff000000)),
                                    )
                                  ],
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text("10", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xff000000))),
                                    Text("Total Questions",
                                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff000000)))
                                  ],
                                ),
                                height: MediaQuery.of(context).size.height * 0.11,
                                width: MediaQuery.of(context).size.width * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xff6D5CFB).withOpacity(0.06),
                                ),
                              )
                            ],
                          ),
                          //  SizedBox(width: ,),
                          Column(
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text("06", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xff0FB469))),
                                    Text("Correct Answer",
                                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff000000)))
                                  ],
                                ),
                                height: MediaQuery.of(context).size.height * 0.11,
                                width: MediaQuery.of(context).size.width * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xff4DE19E).withOpacity(0.06),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text("04", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xffFF4208))),
                                    Text("Wrong Answer",
                                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff000000)))
                                  ],
                                ),
                                height: MediaQuery.of(context).size.height * 0.11,
                                width: MediaQuery.of(context).size.width * 0.25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xffFC6739).withOpacity(0.06),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
