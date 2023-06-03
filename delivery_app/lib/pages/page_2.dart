import 'package:delivery_app/pages/page_3.dart';
import 'package:delivery_app/pages/page_4.dart';
import 'package:delivery_app/pages/page_5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';





class PageTwo extends StatefulWidget {
  static const String id = "pageTwo";

  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        minimum: const EdgeInsets.only(left: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 83),
              child: Image(
                image: AssetImage(
                  'assets/images/vegetables-basket 1.png',
                ),
                height: 390,
                width: 390,
              ),
            ),
            const Text(
              'Get your groceries on\nyour door step',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 15,
            ),
            IntlPhoneField(
              decoration: InputDecoration(
                suffixIcon: Stack(
                  alignment: Alignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(PageThree.id);
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
            const Spacer(
              flex: 1,
            ),
            const Center(
                child: Text(
              'Or connect with social media ',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            )),
            const Spacer(
              flex: 3,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(PageFour.id);
              },
              child: Center(
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.2),
                        blurRadius: 4,
                        spreadRadius: 1.0,
                      ),
                    ],
                  ),
                  child: const Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Center(
                          child: Text(
                        'Sign in with Google',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )),
                      Spacer(
                        flex: 3,
                      ),
                      Image(
                        image: AssetImage('assets/images/search 1.png'),
                        width: 30,
                        height: 30,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(PageFive.id);
                debugPrint('Facebook');
              },
              child: Center(
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.indigo.shade500,
                  ),
                  child: const Row(
                    children: [
                      Spacer(
                        flex: 1,
                      ),
                      Center(
                          child: Text(
                        'Continue with Facebook',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )),
                      Spacer(
                        flex: 3,
                      ),
                      Image(
                        image: AssetImage('assets/images/facebook_logo.png'),
                        width: 35,
                        height: 35,
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
