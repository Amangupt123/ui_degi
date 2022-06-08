import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_degi/My%20Profile.dart';

import 'ChangePassword.dart';
import 'leaderboard.dart';

class Details extends StatefulWidget {
  Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.019),
            const Text(
              "Master Minds",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.005),
            const Text(
              "Date:17 Apr 2022",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: InkWell(
          onTap: (() => Navigator.pop(context, MaterialPageRoute(builder: (context) => Leaderboard()))),
          child: SvgPicture.asset(
            "assets/image/arrow29@3x.svg",
            height: 5,
            width: 5,
            fit: BoxFit.scaleDown,
          ),
        ),
        actions: [
          InkWell(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile())),
            child: Container(
              height: 19,
              width: 60,
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
          height: screenSize.height,
          width: screenSize.width,
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
              height: MediaQuery.of(context).size.height * 0.04,
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
                          Text("10",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xff505050))),
                          Text("Total Questions",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff505050)))
                        ],
                      ),
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: MediaQuery.of(context).size.width * 0.30,
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
                          Text("08",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xff0FB469))),
                          Text("Correct Answer",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff505050)))
                        ],
                      ),
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: MediaQuery.of(context).size.width * 0.30,
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
                          Text("02",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xffFF4208))),
                          Text("Wrong Answer",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff505050)))
                        ],
                      ),
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: MediaQuery.of(context).size.width * 0.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffFC6739).withOpacity(0.06),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.005,
                        width: MediaQuery.of(context).size.width * 0.96,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(19), topRight: Radius.circular(19)),
                          color: Colors.green,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Text("1. Which on of the following is the greatest circle?",style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff000000))),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.02,
                                    ),
                                    const CircleAvatar(
                                      radius: 22,
                                      backgroundColor: Color(0xffDBDBDB),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Color(0xffF4F6F8),
                                        child: Text("B",
                                            style: TextStyle(
                                                fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff000000))),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.04,
                                    ),
                                    const Text("Equator",
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff1DBC19)))
                                  ],
                                ),
                                height: MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xff4DE19E).withOpacity(0.1),
                                )),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                            Row(
                              children: [
                                //  Padding(padding: EdgeInsets.all(10)),
                                SvgPicture.asset("assets/image/smile 7.svg"),
                                SizedBox(
                                  width: MediaQuery.of(context).size.height * 0.01,
                                ),
                                const Text("Your answer is ",
                                    style:
                                        TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff505050))),
                                const Text("Correct",
                                    style:
                                        TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xff505050)))
                              ],
                            )
                          ],
                        ),
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.96,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(bottomLeft: Radius.circular(9), bottomRight: Radius.circular(9)),
                          color: Colors.white,
                          border: Border.all(color: Colors.green),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.005,
                        width: MediaQuery.of(context).size.width * 0.96,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(19), topRight: Radius.circular(19)),
                          color: Colors.red,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Text("2. Who is the author of the book 'Nineteen Eighty Four'?", style:
                                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff000000))),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.02,
                                    ),
                                    const CircleAvatar(
                                      radius: 22,
                                      backgroundColor: Color(0xffDBDBDB),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Color(0xffF4F6F8),
                                        child: Text("A",
                                            style: TextStyle(
                                                fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff000000))),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.04,
                                    ),
                                    const Text("Thomas Hardy",
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffFF4208)))
                                  ],
                                ),
                                height: MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xffFC6739).withOpacity(0.09),
                                )),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.02,
                                    ),
                                    const CircleAvatar(
                                      radius: 22,
                                      backgroundColor: Color(0xffDBDBDB),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Color(0xffF4F6F8),
                                        child: Text("C",
                                            style: TextStyle(
                                                fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff000000))),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.04,
                                    ),
                                    const Text("George Orwell",
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff1DBC19)))
                                  ],
                                ),
                                height: MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xff4DE19E).withOpacity(0.1),
                                )),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                            Row(
                              children: [
                                //  const Padding(padding: EdgeInsets.all(0)),
                                SvgPicture.asset("assets/image/Red Smile@2x.svg"),
                                SizedBox(
                                  width: MediaQuery.of(context).size.height * 0.01,
                                ),
                                const Text("Your answer A is ",
                                    style:
                                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff505050))),
                                const Text("wrong",
                                    style:
                                        TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xff505050)))
                              ],
                            )
                          ],
                        ),
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.width * 0.96,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.only(bottomLeft: Radius.circular(9), bottomRight: Radius.circular(9)),
                          color: Colors.white,
                          border: Border.all(color: Colors.red),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.005,
                        width: MediaQuery.of(context).size.width * 0.96,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(19), topRight: Radius.circular(19)),
                          color: Colors.green,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            const Text("3. Where is the Taj Mahal located?", style:
                                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff000000))),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.02,
                                    ),
                                    const CircleAvatar(
                                      radius: 22,
                                      backgroundColor: Color(0xffDBDBDB),
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundColor: Color(0xffF4F6F8),
                                        child: Text("B",
                                            style: TextStyle(
                                                fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xff000000))),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width * 0.04,
                                    ),
                                    const Text("Agra, India",
                                        style: TextStyle(
                                            fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff1DBC19)))
                                  ],
                                ),
                                height: MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xff4DE19E).withOpacity(0.1),
                                )),
                            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                            Row(
                              children: [
                                // Padding(padding: EdgeInsets.all(10)),
                                SvgPicture.asset("assets/image/smile 7.svg"),
                                SizedBox(
                                  width: MediaQuery.of(context).size.height * 0.01,
                                ),
                                const Text("Your answer is ",
                                    style:
                                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff505050))),
                                const Text("Correct",
                                    style:
                                        TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xff505050)))
                              ],
                            )
                          ],
                        ),
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.96,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(bottomLeft: Radius.circular(9), bottomRight: Radius.circular(9)),
                          color: Colors.white,
                          border: Border.all(color: Colors.green),
                        ),
                      )
                    ],
                  )
                ]),
              ),
            )
          ])),
    );
  }
}
