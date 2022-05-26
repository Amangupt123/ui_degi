import 'package:flutter/material.dart';
import 'package:ui_degi/quizresult.dart';

class Quiz extends StatefulWidget {
  Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
//List<String> List_naa =["ram","s"] ;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            child: Center(
              child: Container(
                color: Colors.white.withOpacity(.4),
                padding: EdgeInsets.all(2),
                child: Icon(Icons.close),
              ),
            ),
          ),
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
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/image/Vector@2x.png", scale: 2),
                Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  "How to ",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Result()));
                  },
                  child: Text(
                    "Play a Quiz",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return const ExpansionTile(
                      title: Text(
                        'What is the meaning of Lorem ipsum?',
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            "Literally it does not mean anything. It is a sequence of words without a sense of Latin derivation that make up a text also known as filler text, fictitious, blind or placeholder.The Lorem Ipsum text is used to fill spaces designated to host texts that have not yet been published.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
