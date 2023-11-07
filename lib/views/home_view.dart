import 'package:doonut/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Main page'), // 한번 정해지면 바뀌지 않는 데이터를 사용하는 위젯 앞에는 const를 붙이도록 한다.
      ),
      backgroundColor: context.watch<ThemeService>().theme.color.surface,
      body: Center(
          child: Text(
        "Home",
        style: context.watch<ThemeService>().theme.typo.header3,
      )),
    );
  }
}
