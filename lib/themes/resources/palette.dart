import 'package:flutter/material.dart';

abstract class Palette {
  // 타이틀, 서브 타이틀, 본문 텍스트 색상
  static Color primaryTextColor = const Color(0xFF222222);

  // 서브 본문 텍스트 색상
  static Color secondaryTextColor = const Color(0xFF666666);

  // 주의 및 에러 텍스트 색상
  static Color warningOrErrorTextColor = const Color(0xFFEB1E1E);

  // 백그라운드 색상
  static Color backgroundColor = const Color(0xFFFFFFFF);
  static Color modalBackgroundColor = const Color(0xFFFFFFFF);

  // 안내 및 활성화 색상
  static Color informationColor = const Color(0xFF2473FC);
  static Color activeColor = const Color(0xFF2473FC);

  // 설명 및 비활성화 색상
  static Color deactiveColor = const Color(0xFF9e9e9e);
}
