import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_apps/data/model/questioner_model/questioner_model.dart';

import '../../core/router/routes.dart';
import '../../core/widget/spinkit_indicator.dart';
import '../../di.dart';
import 'bloc/questioner_page_bloc.dart';

bool isChoise = false;
bool isIgnore = false;
List<String> listAnswer = [];
int totalCorrect = 0;
QuestionerPageStatus status = QuestionerPageStatus.loading;
late Timer timer;

class QuestionerPage extends StatefulWidget {
  final List<QuestionerModel>? quizData;

  QuestionerPage({
    this.quizData = const [],
  });

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuestionerPage> {
  int currentIndex = 0;
  double progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    isChoise = false;
    isIgnore = false;
    isIgnore = false;
    totalCorrect = 0;
    status = QuestionerPageStatus.loading;
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (progressValue >= 1) {
          listAnswer.add('');
          nextQuestion();
        } else {
          progressValue += 0.03333;
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
        isIgnore = false;
        timer.cancel();
        startTimer();
      } else {
        getIt<QuestionerPageBloc>()
            .add(AnswerInputEvent(listAnswer));
        timer.cancel();
        // You can add logic to show a result screen or do something else here
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    listAnswer = [];
    totalCorrect = 0;
    status = QuestionerPageStatus.loading;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
        actions: [
          // Add your right-aligned action here
          TextButton(
            style: ButtonStyle(
              side: MaterialStateProperty.all<BorderSide>(
                BorderSide(
                  color: Colors.blue, // Change this color to your desired border color
                  width: 0.0, // You can adjust the width of the border
                ),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                Routes.welcomePage,
                    (Route<dynamic> route) => false,
              );
            },
            child: const Text(
              'Exit',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: BlocListener<QuestionerPageBloc, QuestionerPageState>(
        listener: (context, state) {
          if (state.status.isSuccess && state.moveTo == Routes.resultPage) {
            Navigator.of(context).pushNamed(Routes.resultPage, arguments: {
              "questioner": state.listQuestionerModel,
              "answer": state.listAnswer,
              "correct": totalCorrect,
            });
          }
        },
        child: BlocBuilder<QuestionerPageBloc, QuestionerPageState>(
          builder: (context, state) {
            final currentQuestion = state.listQuestionerModel != null &&
                    state.listQuestionerModel!.isNotEmpty
                ? state.listQuestionerModel![currentIndex].question
                : "";
            final currentImage = state.listQuestionerModel != null &&
                state.listQuestionerModel!.isNotEmpty
                ? state.listQuestionerModel![currentIndex].imagePath
                : "";
            final List<String> currentAnswers =
                state.listQuestionerModel != null &&
                        state.listQuestionerModel!.isNotEmpty
                    ? state.listQuestionerModel![currentIndex].answers
                    : [];
            final currentCorrectAnswers = state.listQuestionerModel != null &&
                    state.listQuestionerModel!.isNotEmpty
                ? state.listQuestionerModel![currentIndex].correctAnswer
                : "";
            return currentQuestion.isNotEmpty
                ? Stack(
                    children: [
                      Column(
                        children: [
                          LinearProgressIndicator(
                            value: progressValue,
                            minHeight: 10.0,
                            backgroundColor: Colors.grey[300],
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.yellow),
                          ),
                          SizedBox(height: 16.0),
                          QuizCard(
                            currentQuestion,
                            currentImage,
                            currentAnswers,
                            currentCorrectAnswers,
                            nextQuestion: () {
                              setState(() {
                                if (currentIndex <
                                    widget.quizData!.length - 1) {
                                  currentIndex++;
                                  progressValue = 0.0;
                                  isChoise = false;
                                  isIgnore = false;
                                  startTimer();
                                } else {
                                  getIt<QuestionerPageBloc>()
                                      .add(AnswerInputEvent(listAnswer));
                                  timer.cancel();
                                  // You can add logic to show a result screen or do something else here
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  )
                : timer.tick > 10
                    ? Container(
                        child: const Center(
                          child: Text("data not found"),
                        ),
                      )
                    : SpinKitIndicator(type: SpinKitType.circle);
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
  final Function() nextQuestion; // Add the correct answer field

  QuizCard(
    this.question,
    this.imagePath,
    this.answers,
    this.correctAnswer, {
    super.key,
    required this.nextQuestion,
  });

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
          widget.imagePath.isNotEmpty
              ? Image.network(
                  widget.imagePath,
                  width: 200,
                  height: 200,
                )
              : Container(),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              widget.question,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          IgnorePointer(
            ignoring: isIgnore,
            child: Column(
              children: widget.answers.asMap().entries.map((entry) {
                final index = entry.key;
                final answer = entry.value;
                final isCorrect = answer == widget.correctAnswer;
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    style: isChoise && indexActive == index
                        ? ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              isCorrect ? Colors.green : Colors.red,
                            ),
                          )
                        : isCorrect && isChoise
                            ? ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.green),
                              )
                            : ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.blue,
                                ),
                              ),
                    onPressed: () {
                      setState(() {
                        indexActive = index;
                        isChoise = true;
                        isIgnore = true;
                        if (isCorrect) totalCorrect++;
                        listAnswer.add(answer);
                        timer.cancel();
                      });
                      Future.delayed(const Duration(seconds: 1), () {
                        widget.nextQuestion();
                        print('Delayed code executed after 2 seconds');
                      });
                    },
                    child: Text(answer, style: TextStyle(color: Colors.white),),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
