import 'package:flutter/material.dart';
import 'package:makla/base_screen.dart';

import 'package:makla/secondslide.dart';

double getMaxScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

const orangeColor = Color(0xFFF56210);
const whiteColor = Colors.white;

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  var orange = false;
  var white = false;

  @override
  Widget build(BuildContext context) {
    var signupPassword = TextEditingController();
    var signupConfirmation = TextEditingController();
    var password = TextEditingController();
    var email = TextEditingController();
    var signupEmail = TextEditingController();
    Color borderColor = orangeColor;
    double loginHeight =
        getMaxScreenHeight(context) - 0.28 * getMaxScreenHeight(context);
    var heightDevice = getMaxScreenHeight(context);
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            const Image(image: AssetImage('assets/hamburger2.png')),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: orangeColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: loginHeight + 14,
                  width: double.infinity,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    height: loginHeight,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 0.04 * heightDevice,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (!(orange && white))
                                Container(
                                  height: 0.08 * heightDevice,
                                  width: 0.18 * heightDevice,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFFF56210),
                                      width: 2.0,
                                    ),
                                    color: orangeColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(),
                                    onPressed: () {
                                      setState(() {
                                        orange = false;
                                        white = false;
                                      });
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        fontFamily: 'Product Sans',
                                        fontSize: 0.03 * heightDevice,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              if (orange && white)
                                Container(
                                  height: 0.08 * heightDevice,
                                  width: 0.18 * heightDevice,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFFF56210),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(),
                                    onPressed: () {
                                      setState(() {
                                        orange = false;
                                        white = false;
                                      });
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        fontFamily: 'Product Sans',
                                        fontSize: 0.03 * heightDevice,
                                        color: orangeColor,
                                      ),
                                    ),
                                  ),
                                ),
                              const Expanded(child: SizedBox()),
                              if (!(orange && white))
                                Container(
                                  height: 0.08 * heightDevice,
                                  width: 0.18 * heightDevice,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFFF56210),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(),
                                    onPressed: () {
                                      setState(() {
                                        orange = true;
                                        white = true;
                                      });
                                    },
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(
                                        fontFamily: 'Product Sans',
                                        fontSize: 0.03 * heightDevice,
                                        color: orangeColor,
                                      ),
                                    ),
                                  ),
                                ),
                              if (orange && white)
                                Container(
                                  height: 0.08 * heightDevice,
                                  width: 0.18 * heightDevice,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFFF56210),
                                      width: 2.0,
                                    ),
                                    color: orangeColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(),
                                    onPressed: () {
                                      setState(() {
                                        orange = true;
                                        white = true;
                                      });
                                    },
                                    child: Text(
                                      'Sign Up',
                                      style: TextStyle(
                                        fontFamily: 'Product Sans',
                                        fontSize: 0.03 * heightDevice,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          ),
                          SizedBox(
                            height: 0.028 * heightDevice,
                          ),
                          Row(
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontFamily: 'Product Sans',
                                  fontSize: 0.03 * heightDevice,
                                  color: Colors.white,
                                ),
                              ),
                              const Expanded(child: SizedBox())
                            ],
                          ),
                          if (!(orange && white))
                            Container(
                                margin:
                                    EdgeInsets.only(top: 0.01 * heightDevice),
                                height: 0.06 * heightDevice,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFFF56210),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.only(
                                    top: 0.011 * heightDevice,
                                    left: 0.028 * heightDevice,
                                    right: 0.028 * heightDevice),
                                child: TextField(
                                  controller: email,
                                  style: TextStyle(
                                    fontFamily: 'Product Sans',
                                    fontSize: 0.02 * heightDevice,
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      hoverColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      filled: false,
                                      hintStyle: TextStyle(
                                        fontFamily: 'Product Sans',
                                        fontSize: 0.02 * heightDevice,
                                        color: Colors.white54,
                                      ),
                                      hintText: 'Your email'),
                                )),
                          if ((orange && white))
                            Container(
                                margin:
                                    EdgeInsets.only(top: 0.01 * heightDevice),
                                height: 0.06 * heightDevice,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFFF56210),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.only(
                                    top: 0.011 * heightDevice,
                                    left: 0.028 * heightDevice,
                                    right: 0.028 * heightDevice),
                                child: TextField(
                                  controller: signupEmail,
                                  style: TextStyle(
                                    fontFamily: 'Product Sans',
                                    fontSize: 0.02 * heightDevice,
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      hoverColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      filled: false,
                                      hintStyle: TextStyle(
                                        fontFamily: 'Product Sans',
                                        fontSize: 0.02 * heightDevice,
                                        color: Colors.white54,
                                      ),
                                      hintText: 'example@live.com'),
                                )),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Text(
                                'Password',
                                style: TextStyle(
                                  fontFamily: 'Product Sans',
                                  fontSize: 0.03 * heightDevice,
                                  color: Colors.white,
                                ),
                              ),
                              const Expanded(child: SizedBox())
                            ],
                          ),
                          if (!(orange && white))
                            Container(
                                margin:
                                    EdgeInsets.only(top: 0.01 * heightDevice),
                                height: 0.06 * heightDevice,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFFF56210),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.only(
                                    top: 0.011 * heightDevice,
                                    left: 0.028 * heightDevice,
                                    right: 0.028 * heightDevice),
                                child: TextField(
                                  obscureText: true,
                                  controller: password,
                                  style: TextStyle(
                                    fontFamily: 'Product Sans',
                                    fontSize: 0.02 * heightDevice,
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      hoverColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      filled: false,
                                      hintStyle: TextStyle(
                                        fontFamily: 'Product Sans',
                                        fontSize: 0.02 * heightDevice,
                                        color: Colors.white54,
                                      ),
                                      hintText: ''),
                                )),
                          if (orange && white)
                            Container(
                                margin:
                                    EdgeInsets.only(top: 0.01 * heightDevice),
                                height: 0.06 * heightDevice,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFFF56210),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.only(
                                    top: 0.011 * heightDevice,
                                    left: 0.028 * heightDevice,
                                    right: 0.028 * heightDevice),
                                child: TextField(
                                  obscureText: true,
                                  controller: signupPassword,
                                  style: TextStyle(
                                    fontFamily: 'Product Sans',
                                    fontSize: 0.02 * heightDevice,
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      hoverColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      filled: false,
                                      hintStyle: TextStyle(
                                        fontFamily: 'Product Sans',
                                        fontSize: 0.02 * heightDevice,
                                        color: Colors.white54,
                                      ),
                                      hintText: 'At least 8 characters'),
                                )),
                          if (orange && white)
                            SizedBox(
                              height: 0.028 * heightDevice,
                            ),
                          if (orange && white)
                            Row(
                              children: [
                                Text(
                                  'Confirm Password',
                                  style: TextStyle(
                                    fontFamily: 'Product Sans',
                                    fontSize: 0.03 * heightDevice,
                                    color: Colors.white,
                                  ),
                                ),
                                const Expanded(child: SizedBox())
                              ],
                            ),
                          if (orange && white)
                            Container(
                                margin:
                                    EdgeInsets.only(top: 0.01 * heightDevice),
                                height: 0.06 * heightDevice,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFFF56210),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.only(
                                    top: 0.011 * heightDevice,
                                    left: 0.028 * heightDevice,
                                    right: 0.028 * heightDevice),
                                child: TextField(
                                  obscureText: true,
                                  controller: signupConfirmation,
                                  style: TextStyle(
                                    fontFamily: 'Product Sans',
                                    fontSize: 0.02 * heightDevice,
                                    color: Colors.white,
                                  ),
                                  decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      hoverColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      filled: false,
                                      hintStyle: TextStyle(
                                        fontFamily: 'Product Sans',
                                        fontSize: 0.02 * heightDevice,
                                        color: Colors.white54,
                                      ),
                                      hintText: 'Re-Confirm'),
                                )),
                          if (!(orange && white))
                            SizedBox(
                              height: 0.02 * heightDevice,
                            ),
                          if ((orange && white))
                            SizedBox(height: 0.02 * heightDevice),
                          if (!(orange && white))
                            Container(
                              height: 0.062 * heightDevice,
                              width: 0.15 * heightDevice,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFF56210),
                                  width: 2.0,
                                ),
                                color: const Color(0xFFF56210),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextButton(
                                style: TextButton.styleFrom(),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BaseScreen()),
                                  );
                                },
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    fontFamily: 'Product Sans',
                                    fontSize: 0.022 * heightDevice,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          if (orange && white)
                            Container(
                              height: 0.06 * heightDevice,
                              width: 0.15 * heightDevice,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFF56210),
                                  width: 2.0,
                                ),
                                color: const Color(0xFFF56210),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.all(0.0057 * heightDevice),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontFamily: 'Product Sans',
                                  fontSize: 0.025 * heightDevice,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          if (!(orange && white))
                            SizedBox(
                              height: 0.001 * heightDevice,
                            ),
                          if (!(orange && white))
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ' Forgot your password?',
                                  style: TextStyle(
                                      fontSize: 0.015 * heightDevice,
                                      fontFamily: 'Product Sans',
                                      color: Colors.white),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Secondslide()),
                                    );
                                  },
                                  child: Text(
                                    'Rest the password',
                                    style: TextStyle(
                                        fontSize: 0.015 * heightDevice,
                                        fontFamily: 'Product Sans',
                                        color: orangeColor),
                                  ),
                                ),
                              ],
                            ),
                          if (!(orange && white))
                            const Expanded(child: SizedBox()),
                          if (!(orange && white))
                            Text(
                              'Copyright © 2023',
                              style: TextStyle(
                                  fontSize: 0.015 * heightDevice,
                                  fontFamily: 'Product Sans',
                                  color: Colors.white54),
                            ),
                          if (!(orange && white))
                            Text(
                              'All rights reserved.',
                              style: TextStyle(
                                  fontSize: 0.015 * heightDevice,
                                  fontFamily: 'Product Sans',
                                  color: Colors.white54),
                            ),
                          SizedBox(
                            height: 0.01 * heightDevice,
                          )
                        ],
                      ),
                    )),
              ],
            )
          ],
        ));
  }
}

confirmBorder(c, a, b) {
  if (a == "" && b == "") c = orangeColor;
  if (a != b) c = Colors.red;
  if (a == b) c = Colors.green;
}
