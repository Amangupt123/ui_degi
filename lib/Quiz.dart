import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent, shadowColor: Colors.transparent, elevation: 0),
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
              const SizedBox(height: 20),
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
          ],
        ),
      ),
    );
  }
}
