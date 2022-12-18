import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff181818),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Column(
              crossAxisAlignment: 
              CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 80,
                ),
              Text('Hey user',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w800,
                ),
                ),
              Text('Welcome back',
              style: TextStyle(
                color: Colors.white.withOpacity(0.6),
                fontSize: 18,
                ),
              ),
            ],
            )
          ],
          )
        ],),
        )
        ),);
  }
}
