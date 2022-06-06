import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          title: Text(
            "Statistics",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: SvgPicture.asset(
            "assets/image/arrow29@3x.svg",
            height: 5,
            width: 5,
            fit: BoxFit.scaleDown,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: SvgPicture.asset(
                "assets/image/kippp@3x.svg",
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
            SizedBox(height: MediaQuery.of(context).size.height*0.06,),
            Container( height: 136,width: 343,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/top_header@3x.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),)
          ]),
        ));
  }
}
