import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'last.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();

}

class _IntroState extends State<Intro> {
  bool _showButton = false;
  @override 
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container (
        decoration : const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/programming.png'),
            fit: BoxFit.cover,
          ),
        ),
        child:  Stack (
          alignment: AlignmentDirectional.center,
          children : [
            Positioned (
              top: MediaQuery.of(context).size.height * 0.4,
              right : 50,
              child: Center(
                child : AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      '部員募集中',
                      textStyle: const TextStyle(
                        fontSize: 72,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Corp',
                        color: Colors.white,
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],
                  totalRepeatCount: 1,
                  onFinished: (){
                    setState(() {
                      _showButton = true;
                    });
                  },
                ),
            ),
            ),

            if(_showButton)
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.3,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 99, 215, 250),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: const BorderSide(color: Color.fromARGB(255, 255, 255, 255), width: 1.5),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Last()),);
                    },
                    child: const Text(
                      'Click Here!',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
              ).animate().fadeIn(duration: 0.3.seconds),
          ]
        )
      ),
    );
  }
}