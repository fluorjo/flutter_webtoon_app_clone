import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFf4eddb),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showTitle ? MyLargeTitle() : const Text('nothing'),
            IconButton(onPressed: toggleTitle, icon: Icon(Icons.remove_red_eye))
          ],
        )),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  @override
  void initState() {
    super.initState();
    print('init state');
  }
  //init state는 항상 build보다 먼저 실행된다.
  //변수를 초기화하고 API업데이트를 구독할 수 있게 한다.

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }
  //dispose:위젯이 스크린에서 제거될 때 호출되는 메소드.
  //API 업데이트나 이벤트 리스너로부터 구독을 취소하거나
  //form의 리스너로부터 벗어나고 싶을 때 사용 가능.
  //무언가를 취소할 때 사용. 위젯이 위젯 트리에서 제거되기 전에 뭔가를 취소한다거나.

  Widget build(BuildContext context) {
    print('build');
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
