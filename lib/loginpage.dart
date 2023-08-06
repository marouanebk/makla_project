import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:makla/base_screen.dart';
import 'package:makla/firstslide.dart';
import 'package:makla/secondslide.dart';

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
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              height: 400,
              color: Colors.cyan,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: orangeColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  height: 644,
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
                    height: 630,
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (!(orange && white))
                                Container(
                                  height: 60.0,
                                  width: 127.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFFF56210),
                                      width: 2.0,
                                    ),
                                    color: orangeColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      onSurface: whiteColor,
                                    ),
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
                                        fontSize: 25,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              if (orange && white)
                                Container(
                                  height: 60.0,
                                  width: 127.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFFF56210),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      onSurface: orangeColor,
                                    ),
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
                                        fontSize: 25,
                                        color: orangeColor,
                                      ),
                                    ),
                                  ),
                                ),
                              Expanded(child: SizedBox()),
                              if (!(orange && white))
                                Container(
                                  height: 60.0,
                                  width: 127.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFFF56210),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      onSurface: orangeColor,
                                    ),
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
                                        fontSize: 25,
                                        color: orangeColor,
                                      ),
                                    ),
                                  ),
                                ),
                              if (orange && white)
                                Container(
                                  height: 60.0,
                                  width: 127.0,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: const Color(0xFFF56210),
                                      width: 2.0,
                                    ),
                                    color: orangeColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      onSurface: orangeColor,
                                    ),
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
                                        fontSize: 25,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontFamily: 'Product Sans',
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(child: SizedBox())
                            ],
                          ),
                          if (!(orange && white))
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              height: 50.0,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFF56210),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 8.0,
                                  left: 20.0,
                                  right: 20.0),
                              child: Text(
                                'Your email',
                                style: TextStyle(
                                  fontFamily: 'Product Sans',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          if ((orange && white))
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              height: 50.0,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFF56210),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 8.0,
                                  left: 20.0,
                                  right: 20.0),
                              child: Text(
                                'example@live.fr',
                                style: TextStyle(
                                  fontFamily: 'Product Sans',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Text(
                                'Password',
                                style: TextStyle(
                                  fontFamily: 'Product Sans',
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(child: SizedBox())
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0),
                            height: 50.0,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFFF56210),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.only(
                                top: 8.0, bottom: 8.0, left: 20.0, right: 20.0),
                            child: Text(
                              '',
                              style: TextStyle(
                                fontFamily: 'Product Sans',
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          if (orange && white)
                            SizedBox(
                              height: 20.0,
                            ),
                          if (orange && white)
                            Row(
                              children: [
                                Text(
                                  'Confirm Password',
                                  style: TextStyle(
                                    fontFamily: 'Product Sans',
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(child: SizedBox())
                              ],
                            ),
                          if (orange && white)
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              height: 50.0,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFF56210),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 8.0,
                                  left: 20.0,
                                  right: 20.0),
                              child: Text(
                                'Confirm the password',
                                style: TextStyle(
                                  fontFamily: 'Product Sans',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          SizedBox(
                            height: 30,
                          ),
                          if (!(orange && white))
                            Container(
                              height: 60.0,
                              width: 127.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFF56210),
                                  width: 2.0,
                                ),
                                color: Color(0xFFF56210),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  onSurface: whiteColor,
                                ),
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
                                    fontSize: 25,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          if (orange && white)
                            Container(
                              height: 60.0,
                              width: 127.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFFF56210),
                                  width: 2.0,
                                ),
                                color: Color(0xFFF56210),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontFamily: 'Product Sans',
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          SizedBox(
                            height: 5.0,
                          ),
                          if (!(orange && white))
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ' Forgot your password?',
                                  style: TextStyle(
                                      fontFamily: 'Product Sans',
                                      color: Colors.white),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    onSurface: orangeColor,
                                  ),
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
                                    style:
                                        TextStyle(fontFamily: 'Product Sans'),
                                  ),
                                ),
                              ],
                            ),
                          Expanded(child: SizedBox()),
                          Text(
                            'All right reserved',
                            style: TextStyle(
                                fontFamily: 'Product Sans',
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 30,
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
