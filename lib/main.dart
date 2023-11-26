//flutter demo home page 만들어줘


import 'package:flutter/material.dart';

import 'game/game_body.dart';

void main() {
  //firebase 초기화
  runApp(const RSPApp());
}

class RSPApp extends StatelessWidget {
  const RSPApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //앱의 루트
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('가위 바위 보!'),
        ),
        body: const GameBody(),
      ),
    );
  }
}