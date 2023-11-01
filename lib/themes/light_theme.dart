import 'package:flutter/material.dart';

import 'foundations/app_theme.dart';
import 'resources/palette.dart';
import 'resources/typo.dart';

class LightTheme implements AppTheme {
  @override
  Brightness brightness = Brightness.light;

  @override
  AppColor color = AppColor(
    surface: Palette.modalBackgroundColor,
    background: Palette.backgroundColor,
    text: Palette.primaryTextColor,
    subtext: Palette.secondaryTextColor,
    errorText: Palette.warningOrErrorTextColor,
    warningText: Palette.warningOrErrorTextColor,
    informationText: Palette.informationColor,
    activeText: Palette.activeColor,
    deactiveText: Palette.deactiveColor,
    title: Palette.primaryTextColor,
    subTitle: Palette.primaryTextColor,
  );

  @override
  late AppTypo typo = AppTypo(
    typo: const Pretendard(),
    fontColor: color.text,
  );

  @override
  AppDeco deco = AppDeco(
    shadow: [
      BoxShadow(
        color: Palette.primaryTextColor.withOpacity(0.1),
        blurRadius: 12,
      ),
    ],
  );
}
