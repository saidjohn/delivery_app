import 'package:delivery_app/pages/page_2.dart';
import 'package:delivery_app/pages/page_6.dart';
import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  static const String id = "pageOne";

  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const Spacer(
              flex: 4,
            ),
            const Image(
              image: AssetImage('assets/images/Delivery003 1 (1) 1.png'),
              width: 280,
              height: 280,
            ),
            const Spacer(
              flex: 3,
            ),
            const Text(
              'Get the fastest',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const Text(
              'Delivery groceries at home ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            const Spacer(
              flex: 1,
            ),
            const Text(
              'Get your groceries in as fast as one hour',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(PageTwo.id);
                debugPrint('Get Start');
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepOrange,
                ),
                child: const Center(
                    child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(PageSix.id);
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green,
                ),
                child: const Center(
                    child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
