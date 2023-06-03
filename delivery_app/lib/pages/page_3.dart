import 'package:delivery_app/pages/page_2.dart';
import 'package:delivery_app/pages/page_4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PageThree extends StatefulWidget {
  static const String id = 'Pagethree';

  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        minimum: const EdgeInsets.only(
          left: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(PageTwo.id);
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 25,
                ),
              ),
            ),
            const Image(
              image: AssetImage('assets/images/5223988 1.png'),
              width: double.infinity,
              height: 376,
            ),
            const Text(
              'Enter your Phone number',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            IntlPhoneField(
              autofocus: true,
              decoration: InputDecoration(
                suffixIcon: Stack(
                  alignment: Alignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(PageFour.id);
                      },
                      child: const Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.deepOrangeAccent,
                            size: 40,
                          ),
                          Icon(
                            CupertinoIcons.chevron_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              initialCountryCode: 'IN',
            ),
          ],
        ),
      ),
    );
  }
}
