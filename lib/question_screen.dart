import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/answerButton.dart';
import 'package:myapp/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onSelect;

  const QuestionsScreen({super.key, required this.onSelect});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currIdx = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelect(selectedAnswer);
    setState(() {
      currIdx++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currIdx];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((item) {
              return AnswerButton(
                answerText: item,
                onTap: () {
                  answerQuestion(item);
                },
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
