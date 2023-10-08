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
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (progressValue >= 1) {
          nextQuestion();
        } else {
          progressValue += 0.016;
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
    listAnswer = [];
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
          if (state.status.isSuccess && state.moveTo == Routes.resultPage) {
            Navigator.of(context).pushNamed(Routes.resultPage, arguments: {
              "questioner": state.listQuestionerModel,
              "answer": state.listAnswer,
            });
          }
        },
        child: BlocBuilder<QuestionerPageBloc, QuestionerPageState>(
          builder: (context, state) {
            final currentQuestion = state.listQuestionerModel != null &&
                state.listQuestionerModel!.isNotEmpty
                ? state.listQuestionerModel![currentIndex].question ?? ""
                : "";
            final List<String> currentAnswers =
            state.listQuestionerModel != null &&
                state.listQuestionerModel!.isNotEmpty
                ? state.listQuestionerModel![currentIndex].answers ?? []
                : [];
            final currentCorrectAnswers = state.listQuestionerModel != null &&
                state.listQuestionerModel!.isNotEmpty
                ? state.listQuestionerModel![currentIndex].correctAnswer ?? ""
                : "";
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
                    currentQuestion.isNotEmpty
                        ? QuizCard(
                      currentQuestion,
                      '',
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
                            getIt<QuestionerPageBloc>().add(AnswerInputEvent(listAnswer));
                            timer.cancel();
                            // You can add logic to show a result screen or do something else here
                          }
                        });
                      },
                    )
                        : const SpinKitIndicator(type: SpinKitType.circle),
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
  final Function() nextQuestion; // Add the correct answer field

  QuizCard(this.question,
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
          IgnorePointer(
            ignoring: isIgnore,
            child: Column(
              children: widget.answers
                  .asMap()
                  .entries
                  .map((entry) {
                final index = entry.key;
                final answer = entry.value;
                final isCorrect = answer == widget.correctAnswer;
                return Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
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
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.green),
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
                        isIgnore = true;
                        listAnswer.add(answer);
                        timer.cancel();
                      });
                      Future.delayed(const Duration(seconds: 1), () {
                        widget.nextQuestion();
                        print('Delayed code executed after 2 seconds');
                      });
                    },
                    child: Text(answer),
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
