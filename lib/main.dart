import 'package:flutter/material.dart';

void main() {
  runApp(const PuzzleApp());
}

class PuzzleApp extends StatelessWidget {
  const PuzzleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PuzzleApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text( // Text Widget テキスト表示のWidget
              'スライドパズル',
              style: TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 24), // SizedBox Widget 空白を作るために使用
            ElevatedButton( // ElevatedButton Widget 画面遷移のボタンを表示するために使用
              onPressed: () => {},
              child: const Text('スタート'),
            ),
          ],
        ),
      ),
    );
  }
}
