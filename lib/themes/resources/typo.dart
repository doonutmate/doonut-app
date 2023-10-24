import 'package:flutter/material.dart';

abstract class Typo {
  const Typo({
    required this.name,
    required this.regular,
    required this.medium,
    required this.bold,
  });

  final String name;
  final FontWeight regular;
  final FontWeight medium;
  final FontWeight bold;
}

class Pretendard implements Typo {
  const Pretendard();

  @override
  final String name = 'pretendard';

  @override
  final FontWeight regular = FontWeight.w400;

  @override
  final FontWeight medium = FontWeight.w500;

  @override
  final FontWeight bold = FontWeight.w700;
}
