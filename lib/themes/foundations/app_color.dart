part of 'app_theme.dart';

class AppColor {
  const AppColor(
      {required this.surface,
      required this.background,
      required this.text,
      required this.subtext,
      required this.errorText,
      required this.warningText,
      required this.informationText,
      required this.activeText,
      required this.deactiveText,
      required this.title,
      required this.subTitle});

  /// Surface
  final Color surface;
  final Color background;

  /// Text
  final Color text;
  final Color subtext;
  final Color errorText;
  final Color warningText;
  final Color informationText;

  // Active
  final Color activeText;
  final Color deactiveText;

  // Title
  final Color title;
  final Color subTitle;
}
