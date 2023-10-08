import 'dart:async';
import 'dart:ffi';

import 'package:quiz_apps/data/model/questioner_model/questioner_model.dart';
import 'package:quiz_apps/main.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:quiz_apps/repository/questioner/questioner_repository.dart';

import '../../../common/secure.dart';
import '../../../core/router/routes.dart';
import 'package:equatable/equatable.dart';
import '../../../repository/login/login_repository.dart';

part 'questioner_page_event.dart';

part 'questioner_page_state.dart';

class QuestionerPageBloc extends Bloc<QuestionerPageEvent, QuestionerPageState> {
  final QuestionerRepository questionerRepository;

  QuestionerPageBloc({required this.questionerRepository})
      : super(const QuestionerPageState()) {
    on<UserNameInputEvent>(userNameInput);
    on<AnswerInputEvent>(answerInput);
    on<GetListQuestionerEvent>(getListQuestioner);
    on<QuestionerPageInitialEvent>(loginPageInitial);
  }

  Future<void> loginPageInitial(
      QuestionerPageInitialEvent event, Emitter<QuestionerPageState> emit) async {
    emit(QuestionerPageInitial());
  }

  Future<void> userNameInput(
      UserNameInputEvent event, Emitter<QuestionerPageState> emit) async {
    emit(state.copyWith(
      username: event.userName,
    ));
  }

  Future<void> answerInput(
      AnswerInputEvent event, Emitter<QuestionerPageState> emit) async {
    emit(state.copyWith(
      listAnswer: event.listAnswer,
      status: QuestionerPageStatus.success,
      moveTo: Routes.resultPage,
    ));
  }

  Future<void> getListQuestioner(
      GetListQuestionerEvent event, Emitter<QuestionerPageState> emit) async {
    emit(state.copyWith(status: QuestionerPageStatus.loading));

    Future.delayed(const Duration(seconds: 2));
    try {
      final result = await questionerRepository.getListQuestioner('politics');
      result.when(success: (data) {
        emit(state.copyWith(
          listQuestionerModel: data,
            moveTo: Routes.questionerPage,
            status: QuestionerPageStatus.success));
      }, failure: (error) {
        emit(state.copyWith(
            status: QuestionerPageStatus.error,
            listQuestionerModel: [],));
      });
    } catch (error) {
      print(error);
    }
  }
}
