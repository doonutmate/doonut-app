import 'package:doonut/views/home_view.dart';
import 'package:doonut/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        // padding:const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 16.0),
        padding:
            const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 16.0), // 마진을 적용할 수 있음
        // 마진을 적용할 수 있음
        child: MyIntroductionScreen(),
      ),
    );
  }
}

class MyIntroductionScreen extends StatelessWidget {
  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const LoginView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        pages: [
          PageViewModel(
              title: '지금 도넛과 함께 \n 자연스러운 만남을 경험하세요',
              body: '무한한 가능성의 만남, 도넛과 함께하세요.',
              image: Image.asset('assets/onboarding/on_boarding1.png'),
              // decoration: getPageDecoration(context),
              decoration: getPageDecoration(context).copyWith(
                bodyFlex: 8,
                imageFlex: 26,
                footerFlex: 3,
                safeArea: 0,
              ),
              footer: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                height: 80,
                child: OutlinedButton(
                  onPressed: null,
                  style: OutlinedButton.styleFrom(
                    // backgroundColor: Colors.lightBlue,
                    disabledBackgroundColor: Color(0xFFF9F9F9),
                    // padding: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                  child: const Text(
                    '시작하기',
                    style: TextStyle(
                        color: Color(0xFF2F2F2F),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              reverse: true),
          PageViewModel(
              title: '도넛플레이스에서 \n도너츠들과 대화를 나눠보세요',
              body: '도넛플레이스를 선택하면 단체 채팅방에 들어갈 수 있어요.',
              image: Image.asset("assets/onboarding/on_boarding2.png"),
              decoration: getPageDecoration(context).copyWith(
                bodyFlex: 8,
                imageFlex: 26,
                footerFlex: 3,
                safeArea: 0,
              ),
              footer: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                height: 80,
                child: OutlinedButton(
                  onPressed: null,
                  style: OutlinedButton.styleFrom(
                    // backgroundColor: Colors.lightBlue,
                    disabledBackgroundColor: Color(0xFFF9F9F9),
                    padding: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                  child: const Text(
                    '시작하기',
                    style: TextStyle(
                        color: Color(0xFF2F2F2F),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              reverse: true),
          PageViewModel(
              title: '상대방 프로필을 보고\n1:1 채팅을 요청해보세요',
              body: '상대방을 클릭하면 상세한 프로필을 확인하실 수 있어요.',
              image: Image.asset("assets/onboarding/on_boarding3.png"),
              decoration: getPageDecoration(context).copyWith(
                bodyFlex: 8,
                imageFlex: 26,
                footerFlex: 3,
                safeArea: 0,
              ),
              footer: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                height: 80,
                child: ElevatedButton(
                  onPressed: () {
                    _onIntroEnd(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF5412),
                    disabledBackgroundColor: Color(0xFFFF5412),
                    padding: EdgeInsets.all(5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                  child: const Text(
                    '시작하기',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              reverse: true)
        ],
        done: const Text('done'), // 온보딩 스크린을 마지막까지 보았을 때, 무엇을 할 지 지정해주는 버튼
        onDone: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const HomeView(),
            ),
          );
        },
        showNextButton: false,
        showDoneButton: false,
        dotsDecorator: DotsDecorator(
            color: Color(0xFFDDE0E4),
            activeColor: Color(0xFFFF5412),
            spacing: const EdgeInsets.symmetric(horizontal: 6.0),
            size: const Size(7, 7),
            activeSize: const Size(25, 7),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.5))),
        globalFooter: SizedBox(
          width: double.infinity,
          height: 140,
        ));
  }

  PageDecoration getPageDecoration(BuildContext context) {
    return const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 25, fontWeight: FontWeight.w600, color: Color(0xFF2F2F2F)),
      titlePadding: EdgeInsets.only(bottom: 14, top: 50),
      bodyTextStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: Color(0xFF8B95A1),
      ),
      // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Color(0xFFF9F9F9),
    );
  }
}
