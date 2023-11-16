import 'package:flutter/material.dart';

class Login {
  final String accessToken;

  const Login({
    required this.accessToken,
  });

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      accessToken: json['accessToken'] ?? '',
    );
  }
}
