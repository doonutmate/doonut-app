import 'package:doonut/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.watch<ThemeService>().theme.color.surface,
      body: Center(
          child: Text(
        "Home",
        style: context.watch<ThemeService>().theme.typo.header3,
      )),
    );
  }
}
