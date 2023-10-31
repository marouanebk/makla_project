import 'package:flutter/material.dart';

import 'package:makla/custom_app_bar.dart';
import 'package:makla/fourthslide.dart';
import 'package:makla/loginpage.dart';

const orangeColor = Color(0xFFF56210);
double getMaxScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

class Thirdslide extends StatefulWidget {
  const Thirdslide({super.key});

  @override
  State<Thirdslide> createState() => _ThirdslideState();
}

class _ThirdslideState extends State<Thirdslide> {
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
                SizedBox(
                  height: 0.01 * heightDevice,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 40.0),
                  child: Image(
                    height: 0.53 * heightDevice,
                    image: AssetImage('assets/next3.png'),
                  ),
                ),
                SizedBox(
                  height: 0.02 * heightDevice,
                ),
                Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page  ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Product Sans',
                      fontSize: 0.02 * heightDevice),
                ),
                SizedBox(
                  height: 0.02 * heightDevice,
                ),
                Container(
                  padding: EdgeInsets.all(0.005 * heightDevice),
                  height: 0.06 * heightDevice,
                  width: 0.14 * heightDevice,
                  decoration: BoxDecoration(
                      color: orangeColor,
                      borderRadius: BorderRadius.circular(12.0)),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Fourthslide()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      shadowColor: Colors.transparent,
                      backgroundColor: orangeColor,
                      padding: EdgeInsets.all(0.004 * heightDevice),
                    ),
                    child: Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Product Sans',
                        fontSize: 0.03 * heightDevice,
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
                  ],
                ),
                TextButton(
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Fourthslide()),
                    );
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(fontFamily: 'Product Sans'),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: 0.02 * heightDevice,
                  ),
                )
              ],
            )));
  }
}
