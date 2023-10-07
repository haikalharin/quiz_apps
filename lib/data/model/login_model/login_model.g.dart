// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      invalidPasswordAttempts: json['invalidPasswordAttempts'] as int?,
      username: json['username'] as String,
      lastAuthenticated: json['lastAuthenticated'] as String,
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'invalidPasswordAttempts': instance.invalidPasswordAttempts,
      'username': instance.username,
      'lastAuthenticated': instance.lastAuthenticated,
    };
