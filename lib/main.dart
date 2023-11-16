import 'package:doonut/routes/route_path.dart';
import 'package:doonut/services/theme_service.dart';
import 'package:doonut/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk_template.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: 'assets/config/.env');
  String? kakaoNativeAppKey = dotenv.env['KAKAO_NATIVE_APP_KEY'];
  debugPrint('카카오 네이티브 앱 키 : $kakaoNativeAppKey');
  KakaoSdk.init(nativeAppKey: kakaoNativeAppKey);

  await fetchData();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeService(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingView(),
      onGenerateRoute: RoutePath.onGenerateRoute,
    );
  }
}

@Deprecated("API 로직 추가와 Init View 구현 시에 제거")
Future<bool> fetchData() async {
  bool data = false;

  // Change to API call
  await Future.delayed(Duration(seconds: 2), () {
    data = true;
  });

  return data;
}
