import 'package:flutter/material.dart';
import 'package:doonut/themes/foundations/app_theme.dart';
import 'package:doonut/themes/light_theme.dart';

class ThemeService with ChangeNotifier {
  ThemeService({
    AppTheme? theme,
  }) : theme = theme ?? LightTheme();

  /// 현재 테마
  AppTheme theme;
}
