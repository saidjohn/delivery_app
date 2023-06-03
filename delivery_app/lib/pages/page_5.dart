import 'package:delivery_app/pages/page_3.dart';
import 'package:flutter/material.dart';



class PageFive extends StatefulWidget {
  static const String id = 'pageFive';

  const PageFive({Key? key}) : super(key: key);

  @override
  State<PageFive> createState() => _PageFiveState();
}

class _PageFiveState extends State<PageFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(PageThree.id);
                setState(() {});
              },
              child: const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 25,
                    ),
                  )),
            ),
            const Image(
              image: AssetImage('assets/images/map.png'),
              width: 250,
              height: 200,
            ),
            const Text(
              'Select Your Location',
              style: TextStyle(
                  fontSize: 29, fontWeight: FontWeight.w500, height: 4),
            ),
            const Text(
              'Switch on your location to stay in tune with',
              style: TextStyle(fontSize: 18),
            ),
            const Text(
              "what's happening in your area",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                const Image(
                  image: AssetImage('assets/images/Rectangle (2).png'),
                  height: 340,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 210),
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 30, left: 30),
                      child: Text(
                        '4140 Parker Rd. Allentown,\nNew Mexico 31134\nUSA',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                debugPrint('Submit Now');
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepOrange,
                ),
                child: const Center(
                    child: Text(
                  'Submit Now',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
