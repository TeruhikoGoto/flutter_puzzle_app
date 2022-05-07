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
              onPressed: () => showPuzzlePage(context),
              child: const Text('スタート'),
            ),
          ],
        ),
      ),
    );
  }
  void showPuzzlePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const PuzzlePage()),
    );
  }
}

class PuzzlePage extends StatefulWidget {
  const PuzzlePage({ Key? key }) : super(key: key);

  @override
  _PuzzlePageState createState() => _PuzzlePageState();
}

class _PuzzlePageState extends State<PuzzlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // AppBar Widget 上のバーを作るために使用
        title: const Text('スライドパズル'),
        actions: [
          // 保存したタイルの状態を読み込むボタン
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.play_arrow),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.save)
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: TilesView(),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => {},
                icon: const Icon(Icons.shuffle),
                label: const Text('シャッフル'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TilesView extends StatelessWidget {
  const TilesView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // グリッド状にWidgetを並べる
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      crossAxisSpacing: 24,
      mainAxisSpacing: 24,
      padding: const EdgeInsets.symmetric(vertical: 24),
      children: [
        TileView(number: 1, color: Colors.blue, onPressed: () => {}),
        TileView(number: 2, color: Colors.blue, onPressed: () => {}),
        TileView(number: 3, color: Colors.blue, onPressed: () => {}),
        TileView(number: 4, color: Colors.blue, onPressed: () => {}),
        TileView(number: 5, color: Colors.blue, onPressed: () => {}),
        TileView(number: 6, color: Colors.blue, onPressed: () => {}),
        TileView(number: 7, color: Colors.blue, onPressed: () => {}),
        TileView(number: 8, color: Colors.blue, onPressed: () => {}),
        Container(),
      ],
    );
  }
}

class TileView extends StatelessWidget {
  
  final int number;
  final Color color;
  final void Function() onPressed;

  const TileView({
    Key? key,
    required this.number,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
        textStyle: const TextStyle(fontSize: 32),
      ),
      child: Center(
        child: Text(number.toString()),
      ),
    );
  }
}
