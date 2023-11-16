import 'dart:developer';
import 'package:doonut/helper/utils/network_helper.dart';
import 'package:doonut/models/auth/login.dart';

Future<void> login(String kakaoToken) async {
  try {
    final res = await NetworkHelper.dio.post(
        'http://3.36.148.44:8081/oauth/login/kakao',
        data: {"accessToken": kakaoToken});
    print(res.data);
  } catch (e, s) {
    log('Failed to login', error: e, stackTrace: s);
  }
}
