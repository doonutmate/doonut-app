import 'package:doonut/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChattingView extends StatelessWidget {
  const ChattingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chatting Page'),
      ),
      backgroundColor: context.watch<ThemeService>().theme.color.surface,
      body: Center(
          child: Text(
        "Chatting",
        style: context.watch<ThemeService>().theme.typo.header3,
      )),
      // bottomNavigationBar: NavBar(),
    );
  }
}
