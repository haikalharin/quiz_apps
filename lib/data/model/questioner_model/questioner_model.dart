// To parse this JSON data, do
//
//     final questionerModel = questionerModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'questioner_model.freezed.dart';
part 'questioner_model.g.dart';

QuestionerModel questionerModelFromJson(String str) => QuestionerModel.fromJson(json.decode(str));

String questionerModelToJson(QuestionerModel data) => json.encode(data.toJson());

@freezed
class QuestionerModel with _$QuestionerModel {
  const factory QuestionerModel({
    @JsonKey(name: "question")
    required String question,
    @JsonKey(name: "imagePath")
    required String imagePath,
    @JsonKey(name: "answers")
    required List<String> answers,
    @JsonKey(name: "correctAnswer")
    required String correctAnswer,
    @JsonKey(name: "category")
    required String category,
  }) = _QuestionerModel;

  factory QuestionerModel.fromJson(Map<String, dynamic> json) => _$QuestionerModelFromJson(json);
}
