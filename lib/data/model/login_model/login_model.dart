import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/foundation.dart' show immutable;

part 'login_model.g.dart';

@immutable
@JsonSerializable()
class LoginModel {
  const LoginModel({
    this.invalidPasswordAttempts,
    required this.username,
    required this.lastAuthenticated,
  });

  final int? invalidPasswordAttempts;
  final String username;
  final String lastAuthenticated;

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
