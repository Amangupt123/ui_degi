import 'package:flutter/material.dart';
import 'Home.dart';
import 'Home2.dart';
import 'Quiz.dart';
import 'Videoadd.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home2(),
      // home:HomePage() ,
    );
  }
}
