import 'package:flutter/material.dart';
import 'package:myapp/data/questions.dart';
import 'package:myapp/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  // ignore: use_super_parameters
  const ResultScreen({
    Key? key,
    required this.chosenAnswers,
    required this.onRestart,
  }) : super(key: key);

  final List<String> chosenAnswers;
  final VoidCallback onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question-index': i + 1,
        'question': questions[i].text,
        'correct-answer': questions[i].answers[0],
        'user-answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotal = questions.length;
    final numCorrect = summaryData.where((data) {
      return data['user-answer'] == data['correct-answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You answered ($numCorrect) out of ($numTotal) questions correctly.'),
                const SizedBox(height: 30),
                QuestionsSummary(getSummaryData()),
                const Text('List of answers and questions'),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: onRestart,
                  child: const Text('Restart quiz'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Color.fromARGB(255, 32, 98, 241), // Text color
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding
                    textStyle: const TextStyle(fontSize: 16), // Text style
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
