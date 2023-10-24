import 'package:flutter/material.dart';

abstract class Palette {
  // 타이틀, 서브 타이틀, 본문 텍스트 색상
  static Color primaryTextColor = const Color(0xFF222222);

  // 서브 본문 텍스트 색상
  static Color secondaryTextColor = const Color(0xFF666666);

  // 주의 및 에러 텍스트 색상
  static Color warningOrErrorTextColor = const Color(0xFFEB1E1E);
}