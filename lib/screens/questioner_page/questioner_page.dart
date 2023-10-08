import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_apps/data/model/questioner_model/questioner_model.dart';

import '../../core/widget/spinkit_indicator.dart';
import 'bloc/questioner_page_bloc.dart';
bool isChoise = false;
class QuestionerPage extends StatefulWidget {
  final List<QuestionerModel>? quizData;
  QuestionerPage({
     this.quizData = const [],
  });
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuestionerPage> {
  // List of questions and answers
  // final List<Map<String, dynamic>> quizData = [
  //   {
  //     'question': 'What is the capital of France?',
  //     'answers': ['Paris', 'London', 'Berlin', 'Madrid'],
  //     'correctAnswer': 'Paris',
  //   },
  //   {
  //     'question': 'Who wrote Romeo and Juliet?',
  //     'answers': ['Shakespeare', 'Hemingway', 'Tolstoy', 'Twain'],
  //     'correctAnswer': 'Twain',
  //   },
  //   // Add more questions and answers as needed
  // ];

  int currentIndex = 0;
  double progressValue = 0.0;
  late Timer timer;


  @override
  void initState() {
    super.initState();
    isChoise = false;
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (progressValue >= 1.2) {
          nextQuestion();
        } else {
          progressValue += 0.02;
        }
      });
    });
  }

  void nextQuestion() {
    setState(() {
      if (currentIndex < widget.quizData!.length - 1) {
        currentIndex++;
        progressValue = 0.0;
        isChoise = false;
        startTimer();
      } else {
        timer.cancel();
        // You can add logic to show a result screen or do something else here
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: BlocListener<QuestionerPageBloc, QuestionerPageState>(
  listener: (context, state) {
    // TODO: implement listener}
  },
  child: BlocBuilder<QuestionerPageBloc, QuestionerPageState>(
  builder: (context, state) {
    final currentQuestion =state.listQuestionerModel != null && state.listQuestionerModel!.isNotEmpty ? state.listQuestionerModel![currentIndex].question?? "" :"";
    final List<String> currentAnswers = state.listQuestionerModel != null  && state.listQuestionerModel!.isNotEmpty ? state.listQuestionerModel![currentIndex].answers ??[] :[];
    final currentCorrectAnswers =  state.listQuestionerModel != null  && state.listQuestionerModel!.isNotEmpty ? state.listQuestionerModel![currentIndex].correctAnswer?? "" :"";
    return Stack(
      children: [
          Column(
            children: [
              LinearProgressIndicator(
                value: progressValue,
                minHeight: 10.0,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
              ),
              SizedBox(height: 16.0),
              currentQuestion.isNotEmpty ? QuizCard(currentQuestion,'',currentAnswers,currentCorrectAnswers):const SpinKitIndicator(type: SpinKitType.circle),
              BlocBuilder<QuestionerPageBloc, QuestionerPageState>(
                builder: (context, state) {
                  return state.status.isLoading
                      ? const SpinKitIndicator(type: SpinKitType.circle)
                      : Container();
                },
              ),
            ],
          ),
        ],
    );
  },
),
),
    );
  }
}

class QuizCard extends StatefulWidget {
  final String question;
  final String imagePath;
  final List<String> answers;
  final String correctAnswer; // Add the correct answer field

  QuizCard(this.question, this.imagePath, this.answers, this.correctAnswer, {super.key,});

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {

  int indexActive = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset(
            widget.imagePath,
            width: 200,
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              widget.question,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: widget.answers.asMap().entries.map((entry) {
              final index = entry.key;
              final answer = entry.value;
              final isCorrect = answer == widget.correctAnswer;
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  style: isChoise  && indexActive == index
                      ? ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      isCorrect ? Colors.green : Colors.red,
                    ),
                  ): isCorrect && isChoise ?
                  ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green
                    ),
                  )
                      : ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.blue,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      indexActive = index;
                      isChoise = true;
                    });
                  },
                  child: Text(answer),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
