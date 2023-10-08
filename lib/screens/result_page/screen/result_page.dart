import 'package:flutter/material.dart';
import 'package:quiz_apps/data/model/questioner_model/questioner_model.dart';

class ResultsPage extends StatelessWidget {
  final List<QuestionerModel> quizData;
  final List<String> userAnswers;

  ResultsPage({required this.quizData, required this.userAnswers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Results'),
      ),
      body: ListView.builder(
        itemCount: quizData.length,
        itemBuilder: (BuildContext context, int index) {
          final question = quizData[index].question;
          final correctAnswer = quizData[index].correctAnswer;
          final userAnswer = userAnswers[index];
          final isCorrect = userAnswer == correctAnswer;

          return Card(
            margin: EdgeInsets.all(16.0),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Question ${index + 1}: $question',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  title: Text('Your Answer: $userAnswer'),
                  subtitle: Text(
                    isCorrect ? 'Correct' : 'Incorrect (Correct Answer: $correctAnswer)',
                    style: TextStyle(color: isCorrect ? Colors.green : Colors.red),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
