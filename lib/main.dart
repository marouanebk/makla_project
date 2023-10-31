import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:makla/startscreen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scrollbarTheme: ScrollbarThemeData(
            thumbColor: MaterialStateProperty.all<Color>(
                const Color(0xFFF56210)), // Set the color here

            radius: const Radius.circular(20.0),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF56210)),
          useMaterial3: true,
        ),
        //home: const  MapSample()
        // home:  RestaurantDetail());
        home: AnimatedSplashScreen(
          backgroundColor: Colors.black,
          splash: const Text(
            'M',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFFF56210),
                fontFamily: 'Digory Doodles',
                fontSize: 130.0),
          ),
          nextScreen: const Startscreen(),
          splashIconSize: 300,
          duration: 2000,
          animationDuration: const Duration(milliseconds: 2000),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.fade,
        ));
  }
}
