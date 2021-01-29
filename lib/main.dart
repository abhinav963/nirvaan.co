// import 'package:flutter/material.dart';
// import 'package:nirvaanco/screens/flash_screen.dart';
// import 'package:animated_splash/animated_splash.dart';
// import 'package:flare_splash_screen/flare_splash_screen.dart';
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return (MaterialApp(
//       home: AnimatedSplash(
//         imagePath: 'images/logo.jpeg',
//         home: FlashScreen(),
//         duration: 2500,
//         type: AnimatedSplashType.StaticDuration,
//       ),
//     ));
//   }
// }


import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:nirvaanco/screens/flash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 5000,
            splash: 'images/logo.jpeg',
            nextScreen: FlashScreen(),
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
            backgroundColor: Colors.black
        )
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
    );
  }

}

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSplashScreen(
//       splash: 'images/logo.jpeg',
//       nextScreen: FlashScreen(),
//       splashTransition: SplashTransition.rotationTransition,
//       pageTransitionType: PageTransitionType.scale,
//     );
//   }
// }