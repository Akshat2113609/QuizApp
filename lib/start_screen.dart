import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'lib/assets/quiz-logo.png',
            width: 300,
            color: Color.fromARGB(150, 244, 238, 237),
          ),
          const SizedBox(height: 80),
          Text('Learn Flutter The Fun Way !',
              style: GoogleFonts.lato(
                color: Color.fromARGB(255, 192, 63, 171),
                fontSize: 24,
              ),
              ),
              const SizedBox(height: 30,),
              OutlinedButton.icon(onPressed: () {
                startQuiz();
              },
              style:OutlinedButton.styleFrom(
                foregroundColor: Colors.white
              ),
              icon:const  Icon(Icons.arrow_right_alt),
               label:const Text('Start Quiz'))
        ],
      ),
    );
  }
}
