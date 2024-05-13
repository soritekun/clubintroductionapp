import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:metaballs/metaballs.dart';

class Last extends StatefulWidget {
  const Last({Key? key}) : super(key: key);

  @override
  _LastState createState() => _LastState();

}

class _LastState extends State<Last> {
  bool _visible = false;
  @override 
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _visible = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack (
        alignment: AlignmentDirectional.center,
        children : [
          Metaballs(
            color: const Color.fromARGB(255, 66, 133, 244),
            effect: MetaballsEffect.follow(
              growthFactor: 1,
              smoothing: 1,
              radius: 0.5,
            ),
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 90, 60, 255),
                const Color.fromARGB(255, 120, 255, 255),
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft
            ),
            metaballs: 40,
            animationDuration: const Duration(milliseconds: 200),
            speedMultiplier: 1,
            bounceStiffness: 3,
            minBallRadius: 15,
            maxBallRadius: 40,
            glowRadius: 0.7,
            glowIntensity: 0.6,
          ),
          Positioned (
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/pc.png'),
                ),
              ),
            ),
          ),
          Positioned (
            bottom: MediaQuery.of(context).size.height * 0.2,
            child : AnimatedContainer(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInOut,
              height: _visible ?  MediaQuery.of(context).size.height * 1 : MediaQuery.of(context).size.height * 0,
              width:_visible ? MediaQuery.of(context).size.width * 1: MediaQuery.of(context).size.width * 0,
              decoration: const BoxDecoration(
                image:  DecorationImage(
                  image: AssetImage('image/zehismini.png'),
                ),
              ),
            ),
          ),

          Positioned (
            bottom: MediaQuery.of(context).size.height * 0.1,
            child : const Text (
              '部活詳細は\n昇降口チラシを見てね‼',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 34, 34, 34),
                fontWeight: FontWeight.bold,
                fontFamily: 'Corp',
              ),
            ),
          ).animate(
            delay: const Duration(milliseconds: 1000),
          ).slide(
            begin: const Offset(0, 3),
            end: const Offset(0, 0),
            curve: Curves.easeInOut,
            duration: const Duration(seconds: 1),
          ).shimmer(
            delay: const Duration(milliseconds: 1000),
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            color: Colors.blue[300],
          ).shimmer(
            delay: const Duration(milliseconds: 1000),
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            color: Colors.blue[300],
          ),
        ],
      ),
      // body: Container (
      //   alignment: Alignment.center,
      //   height: MediaQuery.of(context).size.height,
      //   width: MediaQuery.of(context).size.width,
      //   decoration : const BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage('image/pc.png'),
      //     ),
      //   ),
      //   child:  Stack (
      //     alignment: AlignmentDirectional.center,
      //     children : [
      //       Positioned (
      //         top: MediaQuery.of(context).size.height * 0.4,
      //         right : 20,
      //         left : 20,
      //         child : Container(
      //           height: 200,
      //           width: 200,
      //           decoration: BoxDecoration(
      //             image: const DecorationImage(
      //               image: AssetImage('image/zehis.png'),
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}