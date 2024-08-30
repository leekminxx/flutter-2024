import 'package:flutter/material.dart';
import 'package:vscode_app/calculator.dart'; // 자동으로 파일 임포트

void main() {
  runApp(const MyApp()); // MyApp 위젯 설정
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //MaterialApp 위젯 호출
      debugShowCheckedModeBanner: false, // 애뮬레이터 오른쪽 상단 배너 삭제
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const Calculator(), //Calculator 위젯 호출
    );
  }
}
