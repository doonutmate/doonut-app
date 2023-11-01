part of 'app_theme.dart';

class AppTypo {
  AppTypo({
    required this.typo,
    required this.fontColor,
  });

  /// Typo
  final Typo typo;

  /// Font Weight
  late FontWeight light = typo.regular;
  late FontWeight regular = typo.medium;
  late FontWeight semiBold = typo.bold;

  /// Font Color
  final Color fontColor;

  late final TextStyle header1 = TextStyle(
    height: 40,
    fontFamily: typo.name,
    fontWeight: typo.bold,
    fontSize: 32,
    color: fontColor,
  );

  late final TextStyle header2 = TextStyle(
    height: 36,
    fontFamily: typo.name,
    fontWeight: typo.bold,
    fontSize: 28,
    color: fontColor,
  );

  late final TextStyle header3 = TextStyle(
    height: 32,
    fontFamily: typo.name,
    fontWeight: typo.bold,
    fontSize: 24,
    color: fontColor,
  );

  late final TextStyle body1 = TextStyle(
    height: 28,
    fontFamily: typo.name,
    fontWeight: typo.bold,
    fontSize: 20,
    color: fontColor,
  );

  late final TextStyle body2 = TextStyle(
    height: 26,
    fontFamily: typo.name,
    fontWeight: typo.bold,
    fontSize: 18,
    color: fontColor,
  );

  late final TextStyle body3 = TextStyle(
    height: 24,
    fontFamily: typo.name,
    fontWeight: typo.bold,
    fontSize: 16,
    color: fontColor,
  );

  late final TextStyle tint1 = TextStyle(
    height: 22,
    fontFamily: typo.name,
    fontWeight: typo.bold,
    fontSize: 14,
    color: fontColor,
  );

  late final TextStyle tint2 = TextStyle(
    height: 20,
    fontFamily: typo.name,
    fontWeight: typo.bold,
    fontSize: 12,
    color: fontColor,
  );
}
