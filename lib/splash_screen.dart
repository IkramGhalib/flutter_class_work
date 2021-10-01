import 'package:flutter/material.dart';
import 'package:flutter_day_1/home_page.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SplashScreenView(
        navigateRoute: Home(),
    duration: 6000,
    imageSize: 130,
    imageSrc: "assets/images/login.png",
    text: "Welocme to Home Screen",
    textType: TextType.TyperAnimatedText,

    textStyle: TextStyle(
    fontSize: 30.0,),
    colors: [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
    ],
    


      // AnimatedSplashScreen(
      //   duration: 3000,
      //   splash: Image.asset("assets/images/login.png"),
      //   nextScreen: Home(),
      //   splashTransition: SplashTransition.rotationTransition,
      //   // pageTransitionType: PageTransitionType.scale,
      //   backgroundColor: Colors.white,
      //
      ),
    );
  }
}