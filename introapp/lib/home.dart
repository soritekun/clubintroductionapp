import 'package:flutter/material.dart';
import 'package:floating_bubbles/floating_bubbles.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        decoration : const  BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/homebackground.png'),
            fit: BoxFit.cover,
          ),
        ),
        child:  Stack (
          children : [
            Positioned.fill(
              child: FloatingBubbles.alwaysRepeating(
                noOfBubbles: 25,
                colorsOfBubbles: [
                  Color.fromARGB(113, 128, 255, 244),
                  Color.fromARGB(185, 181, 255, 162)
                ],
                sizeFactor: 0.16,
                paintingStyle: PaintingStyle.fill,
                shape: BubbleShape.circle,
                speed : BubbleSpeed.normal,
              ),
            ),
            Positioned(
              top: 100,
              left: 20,
              right: 20,
              child: Text(
                'プログラミング',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily : 'JKmaru',
                  color: Colors.black,
                ),
              ).animate().shimmer(duration: 1.5.seconds),
            ),
            Positioned(
              top: 160,
              left : 20,
              right: 20,
              child: Text(
                '同好会',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 44,
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'JKmaru',
                  color: Colors.black ,
                ),
              ).animate().shimmer(duration: 1.5.seconds),
            ),
          ]
        )
      ),
    );
  }
}