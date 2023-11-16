import 'dart:developer';
import 'package:doonut/helper/utils/network_helper.dart';
import 'package:doonut/models/auth/login.dart';
import 'package:doonut/views/base_view.dart';
import 'package:doonut/views/home_view.dart';
import 'package:flutter/material.dart';

Future<void> login(String kakaoToken, BuildContext context) async {
  try {
    final res = await NetworkHelper.dio.post(
        'http://3.36.148.44:8081/oauth/login/KAKAO',
        data: {"accessToken": kakaoToken});
    print(res.data);
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const BaseView()),
    );
  } catch (e, s) {
    log('Failed to login', error: e, stackTrace: s);
  }
}
