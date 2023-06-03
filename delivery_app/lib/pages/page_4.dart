import 'package:delivery_app/pages/page_3.dart';
import 'package:delivery_app/pages/page_7.dart';
import 'package:flutter/material.dart';



class PageFour extends StatefulWidget {
  static const String id = '/PageFour';

  const PageFour({Key? key}) : super(key: key);

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        minimum: const EdgeInsets.only(
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(PageThree.id);
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Enter your 4_digit code',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Code',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            const TextField(
              style: TextStyle(fontSize: 18),
              maxLength: 4,
              autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "- - - -",
                hintStyle: TextStyle(fontWeight: FontWeight.w900),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 285),
              child: Text(
                'Resend Code',
                style: TextStyle(color: Colors.green, fontSize: 18),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(PageSeven.id);
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 150, left: 315),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      Icons.circle,
                      size: 85,
                      color: Colors.deepOrangeAccent,
                    ),
                    Icon(Icons.chevron_right_sharp,
                        color: Colors.white, size: 55),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
