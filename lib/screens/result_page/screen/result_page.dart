import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quiz_apps/data/model/questioner_model/questioner_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common/remote_utils.dart';
import '../../../core/router/routes.dart';

class ResultsPage extends StatefulWidget {
  final List<QuestionerModel> quizData;
  final List<String> userAnswers;
  final int totalCorrect;

  ResultsPage(
      {required this.quizData,
      required this.userAnswers,
      required this.totalCorrect});

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  final totalCorrectTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Quiz Results'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            CircularPercentIndicator(
              radius: 100.0,
              lineWidth: 10.0,
              percent: widget.totalCorrect / widget.quizData.length,
              center: Text("${widget.totalCorrect}/${widget.quizData.length}"),
              progressColor: Colors.blue,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: ElevatedButton(
                onPressed: () {
                  launchUrlWa(
                      "result correct: ${widget.totalCorrect}/${widget.quizData.length}-(${(widget.totalCorrect / widget.quizData.length) * 100}%) ");
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  // Text color when pressed
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Border radius
                    side: BorderSide(color: Colors.blue), // Border color
                  ),
                ),
                child: Text(
                  "Share result",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.quizData.length,
                itemBuilder: (BuildContext context, int index) {
                  final question = widget.quizData[index].question;
                  final correctAnswer = widget.quizData[index].correctAnswer;
                  final userAnswer = widget.userAnswers.isNotEmpty
                      ? widget.userAnswers[index]
                      : '';
                  final isCorrect = userAnswer == correctAnswer;

                  return Card(
                    margin: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Question ${index + 1}: $question',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ListTile(
                          title: Text('Your Answer: $userAnswer'),
                          subtitle: Text(
                            isCorrect
                                ? 'Correct'
                                : 'Incorrect (Correct Answer: $correctAnswer)',
                            style: TextStyle(
                                color: isCorrect ? Colors.green : Colors.red),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    Routes.welcomePage,
                    (Route<dynamic> route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  // Text color when pressed
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Border radius
                    side: BorderSide(color: Colors.blue), // Border color
                  ),
                ),
                child: Text(
                  "Finish",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
