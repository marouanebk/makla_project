import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:makla/base_screen.dart';
import 'package:makla/firstslide.dart';
import 'package:makla/pages/home_screen.dart';
import 'package:makla/restaurant_detail.dart';
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
                Color(0xFFF56210)), // Set the color here
            isAlwaysShown: true,
            radius: Radius.circular(20.0),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFF56210)),
          useMaterial3: true,
        ),
        //home: const  MapSample()
        // home:  RestaurantDetail());
        home: AnimatedSplashScreen(
          backgroundColor: Colors.black,
          splash: Text(
            'M',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFFF56210),
                fontFamily: 'Digory Doodles',
                fontSize: 130.0),
          ),
          nextScreen: Startscreen(),
          splashIconSize: 300,
          duration: 3000,
          animationDuration: const Duration(milliseconds: 3000),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.fade,
        ));
  }
}
