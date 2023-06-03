import 'package:delivery_app/pages/page_1.dart';
import 'package:delivery_app/pages/page_2.dart';
import 'package:delivery_app/pages/page_3.dart';
import 'package:delivery_app/pages/page_4.dart';
import 'package:delivery_app/pages/page_5.dart';
import 'package:delivery_app/pages/page_6.dart';
import 'package:delivery_app/pages/page_7.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PageOne(),
      routes: {
        PageOne.id:(context)=> const PageOne(),
        PageTwo.id:(context) => const PageTwo(),
        PageThree.id:(context) => const PageThree(),
        PageFour.id:(context) => const PageFour(),
        PageFive.id: (context) => const PageFive(),
        PageSix.id: (context) => const PageSix(),
        PageSeven.id: (context) => const PageSeven(),
      },
    );
  }
}
