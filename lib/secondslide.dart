import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makla/base_screen.dart';
import 'package:makla/custom_app_bar.dart';
import 'package:makla/thirdslide.dart';

const orangeColor = Color(0xFFF56210);

class Secondslide extends StatefulWidget {
  const Secondslide({super.key});

  @override
  State<Secondslide> createState() => _SecondslideState();
}

class _SecondslideState extends State<Secondslide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Image(
                image: AssetImage('assets/secondslide.png'),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "It is a long established fact that a reader will be distracted by the readable content of a page when ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Product Sans',
                    fontSize: 20.0),
              ),
              Expanded(
                child: SizedBox(
                  height: 40.0,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(4.0),
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                    color: orangeColor,
                    borderRadius: BorderRadius.circular(12.0)),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Thirdslide()),
                    );
                  },
                  child: const Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Product Sans',
                      fontSize: 25,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    shadowColor: Colors.transparent,
                    backgroundColor: orangeColor,
                    padding: const EdgeInsets.all(3.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: orangeColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(
                    width: 7.0,
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 7.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  onSurface: orangeColor,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Secondslide()),
                  );
                },
                child: Text('Skip'),
              ),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ));
  }
}
