import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makla/base_screen.dart';
import 'package:makla/firstslide.dart';

const orangeColor = Color(0xFFF56210);

class Startscreen extends StatefulWidget {
  const Startscreen({super.key});

  @override
  State<Startscreen> createState() => _StartscreenState();
}

class _StartscreenState extends State<Startscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 200.0,
            ),
            Text(
              'M',
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Color(0xFFF56210),
                  fontFamily: 'Digory Doodles',
                  fontSize: 130.0),
            ),
            SizedBox(height: 0.0),
            Text(
              'makla',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFFffffff),
                  fontFamily: 'Digory Doodles',
                  fontSize: 30.0),
            ),
            SizedBox(
              height: 180.0,
            ),
            Container(
              padding: const EdgeInsets.all(4.0),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: orangeColor,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Firstslide()),
                  );
                },
                child: Image(
                  image: AssetImage('assets/arrowRight.png'),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                  backgroundColor: orangeColor,
                  padding: const EdgeInsets.all(3.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
