// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questioner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionerModel _$$_QuestionerModelFromJson(Map<String, dynamic> json) =>
    _$_QuestionerModel(
      question: json['question'] as String,
      imagePath: json['imagePath'] as String,
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      correctAnswer: json['correctAnswer'] as String,
      category: json['category'] as String,
    );

Map<String, dynamic> _$$_QuestionerModelToJson(_$_QuestionerModel instance) =>
    <String, dynamic>{
      'question': instance.question,
      'imagePath': instance.imagePath,
      'answers': instance.answers,
      'correctAnswer': instance.correctAnswer,
      'category': instance.category,
    };
