import 'package:doonut/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_talk.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 130),
            Image.asset(
              'assets/images/login_doonut.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 16),
            Text(
              "지금 도넛과 함께\n자연스러운 만남을 경험하세요!",
              style: TextStyle(
                color: Color(0xFF2F2F2F),
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              "무한한 가능성의 만남, 도넛과 함께하세요.",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 55),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 9, horizontal: 17),
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
              child: Text(
                "3초만에 시작하기 😍",
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 23),
            TextButton(
              onPressed: () async {
                bool isInstalled = await isKakaoTalkInstalled();
                OAuthToken? token;

                if (isInstalled) {
                  try {
                    token = await UserApi.instance.loginWithKakaoTalk();
                    debugPrint('카카오톡으로 로그인 성공');
                  } catch (error) {
                    debugPrint('카카오톡으로 로그인 실패 $error');

                    if (error is PlatformException &&
                        error.code == 'CANCELED') {
                      return;
                    }
                    try {
                      token = await UserApi.instance.loginWithKakaoAccount();
                      debugPrint('카카오계정으로 로그인 성공');
                    } catch (error) {
                      debugPrint('카카오계정으로 로그인 실패 $error');
                    }
                  }
                } else {
                  try {
                    token = await UserApi.instance.loginWithKakaoAccount();
                    debugPrint('카카오계정으로 로그인 성공');
                  } catch (error) {
                    debugPrint('카카오계정으로 로그인 실패 $error');
                  }
                }
                if (token != null) {
                  debugPrint('카카오계정 토큰 $token');
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const HomeView()),
                  );
                  // Map<String, dynamic>? response =
                  //     await userService.signInByKakaoToken(token.accessToken);
                }
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(0),
                primary: Colors.white,
              ),
              child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Image.asset('assets/images/kakao_login_large_wide.png',
                      width: 300)),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.white,
              ),
              child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: Image.asset('assets/images/apple_login_button.png',
                      width: 300)),
            ),
            const SizedBox(height: 16),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "로그인을 하게 되면 ",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "서비스 이용약관",
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ", ",
                    ),
                    TextSpan(
                      text: "개인정보 처리방침, \n",
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: "그리고 ",
                    ),
                    TextSpan(
                      text: "위치정보 이용약관",
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: "에 동의하게 됩니다.",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
