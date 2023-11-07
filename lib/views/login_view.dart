import 'package:doonut/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
            Image.asset(
              'assets/images/login_doonut.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 16),
            Text(
              "지금 도넛과 함께\n자연스러운 만남을 경험하세요!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
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
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
              child: Text(
                "3초만에 시작하기 😍",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                bool isInstalled = await isKakaoTalkInstalled();
                OAuthToken? token;
                // UserService userService = UserService();

                if (isInstalled) {
                  try {
                    token = await UserApi.instance.loginWithKakaoTalk();
                    debugPrint('카카오톡으로 로그인 성공');
                  } catch (error) {
                    debugPrint('카카오톡으로 로그인 실패 $error');

                    // 사용자가 카카오톡 설치 후 디바이스 권한 요청 화면에서 로그인을 취소한 경우,
                    // 의도적인 로그인 취소로 보고 카카오계정으로 로그인 시도 없이 로그인 취소로 처리 (예: 뒤로 가기)
                    if (error is PlatformException &&
                        error.code == 'CANCELED') {
                      return;
                    }
                    // 카카오톡에 연결된 카카오계정이 없는 경우, 카카오계정으로 로그인
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
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFFEE500),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 112),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/kakao.svg',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      "카카오 로그인",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF2A0000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 13, horizontal: 112),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/kakao.svg',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      "Apple로 로그인",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
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
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ", ",
                    ),
                    TextSpan(
                      text: "개인정보 처리방침",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(
                      text: ", 그리고 ",
                    ),
                    TextSpan(
                      text: "위치정보 이용약관",
                      style: TextStyle(
                        color: Colors.blue,
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
