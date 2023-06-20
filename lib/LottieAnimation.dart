import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.purple,
              Colors.pink,
              Colors.white
                    ]
              ) 
              ),
        child: ListView(
          children: [
            Lottie.asset("assets/assets/Animations/140716-keyframe-wizzard.json")],),
      ),
     );
  }
  
}