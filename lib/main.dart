import 'package:flutter/material.dart';
import 'package:toonflix/screens/home_screen.dart';
import 'package:toonflix/services/api_service.dart';

void main() {

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});
  //이 위젯의 key를 stateless widget이라는 슈퍼 클래스에 보낸다.
  //키는 위젯의 아이디 같은 식별자 역할을 한다. 플러터가 위젯을 빠르게 찾게 한다.

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
