import 'package:doonut/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlaceView extends StatelessWidget {
  const PlaceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Place Page'),
      ),
      backgroundColor: context.watch<ThemeService>().theme.color.surface,
      body: Center(
          child: Text(
        "Place",
        style: context.watch<ThemeService>().theme.typo.header3,
      )),
      // bottomNavigationBar: NavBar(),
    );
  }
}
