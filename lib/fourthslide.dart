import 'package:flutter/material.dart';
import 'package:makla/loginpage.dart';

import 'custom_app_bar.dart';

const orangeColor = Color(0xFFF56210);

double getMaxScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

class Fourthslide extends StatefulWidget {
  const Fourthslide({super.key});

  @override
  State<Fourthslide> createState() => _FourthslideState();
}

class _FourthslideState extends State<Fourthslide> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = getMaxScreenHeight(context);
    return Scaffold(
        appBar: const CustomAppBar(),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 0.57 * heightDevice,
                    image: AssetImage('assets/welcome2.png'),
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        height: 0.1 * heightDevice,
                        image: AssetImage('assets/M.png'),
                      ),
                      SizedBox(
                        height: 0.02 * heightDevice,
                      ),
                      Image(
                        height: 0.02 * heightDevice,
                        image: AssetImage('assets/Makla.png'),
                      ),
                      SizedBox(
                        height: 0.04 * heightDevice,
                      ),
                      SizedBox(
                        width: 0.2 * heightDevice,
                        child: Text(
                          "N°1 in Algeria for delivering Food !",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Product Sans',
                              fontSize: 0.02 * heightDevice),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 0.04 * heightDevice,
              ),
              Expanded(
                child: SizedBox(
                  height: 0.057 * heightDevice,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    bottom: 0.005 * heightDevice,
                    left: 0.04 * heightDevice,
                    right: 0.04 * heightDevice,
                    top: 0.005 * heightDevice),
                decoration: BoxDecoration(
                    color: orangeColor,
                    borderRadius: BorderRadius.circular(12.0)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Loginpage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    shadowColor: Colors.transparent,
                    backgroundColor: orangeColor,
                    padding: const EdgeInsets.all(3.0),
                  ),
                  child: Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Product Sans',
                      fontSize: 0.036 * heightDevice,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 0.02 * heightDevice,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 0.01 * heightDevice,
                    width: 0.01 * heightDevice,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(
                    width: 0.01 * heightDevice,
                  ),
                  Container(
                    height: 0.01 * heightDevice,
                    width: 0.01 * heightDevice,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(
                    width: 0.01 * heightDevice,
                  ),
                  Container(
                    height: 0.01 * heightDevice,
                    width: 0.01 * heightDevice,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(
                    width: 0.01 * heightDevice,
                  ),
                  Container(
                    height: 0.01 * heightDevice,
                    width: 0.01 * heightDevice,
                    decoration: BoxDecoration(
                      color: orangeColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
              Text(
                'Copyright © 2023',
                style: TextStyle(
                    fontSize: 0.017 * heightDevice,
                    fontFamily: 'Product Sans',
                    color: Colors.white54),
              ),
              Text(
                'All rights reserved.',
                style: TextStyle(
                    fontSize: 0.017 * heightDevice,
                    fontFamily: 'Product Sans',
                    color: Colors.white54),
              ),
              SizedBox(
                height: 0.01 * heightDevice,
              ),
            ],
          ),
        ));
  }
}
