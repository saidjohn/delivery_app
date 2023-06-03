import 'package:delivery_app/pages/page_2.dart';
import 'package:delivery_app/pages/page_5.dart';
import 'package:delivery_app/pages/page_7.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageSix extends StatefulWidget {
  static const String id = 'pageSix';

  const PageSix({Key? key}) : super(key: key);

  @override
  State<PageSix> createState() => _PageSixState();
}

class _PageSixState extends State<PageSix> {
  bool eye = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(PageFive.id);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                  ),
                ),
                const Image(
                  image: AssetImage('assets/images/Delivery017 1.png'),
                  height: 280,
                  width: 410,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text('Enter your login details and password',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                      )),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text('Email',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )),
                const TextField(
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    )),
                TextField(
                  style: const TextStyle(fontSize: 18),
                  obscureText: eye,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                    onTap: () {
                      eye = !eye;
                      setState(() {});
                    },
                    child: eye
                        ? const Icon(
                            CupertinoIcons.eye_slash,
                          )
                        : const Icon(CupertinoIcons.eye),
                  )),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(PageSeven.id);
                    },
                    child: const Text(
                      'Forget Password?',
                      style: TextStyle(color: Colors.deepOrange, height: 3),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      debugPrint('Login Now');
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
                        'Login Now',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(PageTwo.id);
                        setState(() {});
                      },
                      child: const Text("Don't have an account?",
                          style: TextStyle(fontSize: 15)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(PageSeven.id);
                      },
                      child: const Text(' Create now account',
                          style: TextStyle(
                              fontSize: 15, color: Colors.deepOrange)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
