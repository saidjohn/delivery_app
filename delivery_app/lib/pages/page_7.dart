import 'package:delivery_app/pages/page_6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageSeven extends StatefulWidget {
  static const String id = 'pageSeven';

  const PageSeven({Key? key}) : super(key: key);

  @override
  State<PageSeven> createState() => _PageSevenState();
}

class _PageSevenState extends State<PageSeven> {
  bool eye = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(PageSix.id);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    ),
                  ),
                  const Image(
                    image: AssetImage('assets/images/Delivery001 1 1.png'),
                    width: 400,
                    height: 270,
                  ),
                  const Center(
                    child: Text(
                      'Signup',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text('Enter your details for naw accaund',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w200,
                        )),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const Text('Name',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      )),
                  const TextField(
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('Email',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      )),
                  const TextField(
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    decoration: InputDecoration(),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('Password',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      )),
                  TextField(
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w300),
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
                          : Icon(CupertinoIcons.eye),
                    )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SelectableText.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'By continuing you to agree to our ',
                            style: TextStyle(fontSize: 15, color: Colors.grey)),
                        TextSpan(
                            text: 'Terms of Service\n',
                            style:
                                TextStyle(fontSize: 15, color: Colors.green)),
                        TextSpan(
                            text: 'and ',
                            style: TextStyle(fontSize: 15, color: Colors.grey)),
                        TextSpan(
                            text: 'Privacy Policy',
                            style:
                                TextStyle(fontSize: 15, color: Colors.green)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
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
                          'Register Now',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
