import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'; // 新增了这一行



void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build( BuildContext context) {

    // 我们想使用 material 风格的应用，所以这里用 MaterialApp
    return MaterialApp(
      // 移动设备使用这个 title 来表示我们的应用。具体一点说，在 Android 设备里，我们点击
      // recent 按钮打开最近应用列表的时候，显示的就是这个 title。
      title: 'Our first Flutter app',

      // 应用的“主页”
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter rolling demo'),
        ),
        // 我们知道，Flutter 里所有的东西都是 widget。为了把按钮放在屏幕的中间，
        // 这里使用了 Center（它是一个 widget）。
        body: Center(
          child: RollingButton(),
//          child: RaisedButton(
//            // 用户点击时候调用
//            onPressed: _onPressed(context),
//            child: Text('roll'),
//          ),
        ),
      ),
    );
  }

}
class RollingButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _RollingState();
  }

}

class _RollingState extends State<RollingButton>{
  final _random = Random();
  List<int> _roll() {
    final roll1 = _random.nextInt(6) + 1;
    final roll2 = _random.nextInt(6) + 1;
    return [roll1, roll2];
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text("roll"),
      onPressed: _onPressed,
    );
  }

  void _onPressed() {

    debugPrint('_onPressed');
    final rollResults = _roll();

    showDialog(
      // 第一个 context 是参数名，第二个 context 是 State 的成员变量
        context: context,
        builder: (_){
          return AlertDialog(
            content: Text("Roll result: (${rollResults[0]}, ${rollResults[1]})"),
          );
        }
    );
  }

}





//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//   // final wordPair = new WordPair.random(); // 新增了这一行
//    return new MaterialApp(
//      title: 'Welcome to Flutter',
//      home: new RandomWords(),
////      home: new Scaffold(
////        appBar: new AppBar(
////          title: new Text('appBar to Flutter'),
////        ),
////        body: new Center(
////          // 这里把之前的 "const" 换成了 "new".
////          //child: const Text('Hello World'),   // 我们不用这样的方式生成文字了
////          //child: new Text(wordPair.asPascalCase), // 这是新的文字生成方式
////          child: new RandomWords(),
////        ),
////      ),
//    );
//  }
//}
//
//class RandomWords extends StatefulWidget {
//  @override
//  RandomWordsState createState() => new RandomWordsState();
//}
//
//class RandomWordsState extends State<RandomWords> {
//  // 添加如下两行
//  final List<WordPair> _suggestions = <WordPair>[];
//  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
//
//
//  @override // 新增代码片段 - 开始 ...
//  Widget build(BuildContext context) {
//    final WordPair wordPair = new WordPair.random();
//
//   // return new Text(wordPair.asPascalCase);
//    return new Scaffold (                   // 代码从这里...
//      appBar: new AppBar(
//        title: new Text('Startup Name Generator'),
//      ),
//      body: _buildSuggestions(),
//    );
//  }
//  Widget _buildRow(WordPair pair) {
//    return new ListTile(
//      title: new Text(
//        pair.asPascalCase,
//        style: _biggerFont,
//      ),
//    );
//  }
//
//  Widget _buildSuggestions() {
//    return new ListView.builder(
//        padding: const EdgeInsets.all(16.0),
//
//        // 对于每个建议的单词对都会调用一次 itemBuilder，
//        // 然后将单词对添加到 ListTile 行中
//        // 在偶数行，该函数会为单词对添加一个 ListTile row.
//        // 在奇数行，该行书湖添加一个分割线 widget，来分隔相邻的词对。
//        // 注意，在小屏幕上，分割线看起来可能比较吃力。
//
//        itemBuilder: (BuildContext _context, int i) {
//          // 在每一列之前，添加一个1像素高的分隔线widget
//          if (i.isOdd) {
//            return new Divider();
//          }
//
//          // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整）
//          // 比如 i 为：1, 2, 3, 4, 5 时，结果为 0, 1, 1, 2, 2，
//          // 这可以计算出 ListView 中减去分隔线后的实际单词对数量
//          final int index = i ~/ 2;
//          // 如果是建议列表中最后一个单词对
//          if (index >= _suggestions.length) {
//            // ...接着再生成10个单词对，然后添加到建议列表
//            _suggestions.addAll(generateWordPairs().take(10));
//          }
//          return _buildRow(_suggestions[index]);
//        }
//    );
//  }// ... 新增的代码片段 - 结束
//}


