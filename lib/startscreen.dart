import 'package:flutter/material.dart';

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
            const SizedBox(
              height: 100.0,
            ),
            const Text(
              'M',
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Color(0xFFF56210),
                  fontFamily: 'Digory Doodles',
                  fontSize: 130.0),
            ),
            const SizedBox(height: 0.0),
            const Text(
              'makla',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFFffffff),
                  fontFamily: 'Digory Doodles',
                  fontSize: 30.0),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Container(
              padding: const EdgeInsets.all(4.0),
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                color: orangeColor,
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Firstslide()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  shadowColor: Colors.transparent,
                  backgroundColor: orangeColor,
                  padding: const EdgeInsets.all(3.0),
                ),
                child: const Image(
                  image: AssetImage('assets/arrowRight.png'),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
