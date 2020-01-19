import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'; // 新增了这一行

//void main() => runApp(MyApp());
//void main() => runApp(MyTestApp());
//void main() => runApp(MyRountApp());
void main() => runApp(MyAddMessageScreenApp());


class MyAddMessageScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UX demo',
      home: AddMessageScreen(),
    );
  }
}

class AddMessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add message'),
      ),
      body: MessageForm(),
    );
  }
}

class MyRountApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
      title: 'Flutter navigation',
      home: FirstScreen(),
    );

//      MaterialApp(
//        // 从名字叫做 '/' 的 route 开始（也就是 home）
//        initialRoute: '/',
//        routes: {
//          '/': (context) => FirstScreen(),
//          '/second': (context) => SecondScreen(),
//        },
//      );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  State createState() {
    return _FirstScreenState();
  }
}
class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigation deme'),),
      body: Center(
        child: RaisedButton(
            child: Text('First screen'),
            onPressed: () async  {
              // Navigator.push 会返回一个 Future<T>，如果你对这里使用的 await不太熟悉，可以参考
              // https://www.dartlang.org/guides/language/language-tour#asynchrony-support
              var msg = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => SecondScreen())
              );
              debugPrint('msg = $msg');

            }
        ),
      ),
    );
  }
}


class TestGestureDetectorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text('text'),
      onTap: () => debugPrint('clicked'),
    );
  }
}
class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Listener(
      child: Text('text'),
      onPointerDown: (event) => print('onPointerDown'),
      onPointerUp: (event) => print('onPointerUp'),
      onPointerMove: (event) => print('onPointerMove'),
      onPointerCancel: (event) => print('onPointerCancel'),
    );
  }
}


class SecondScreen extends StatefulWidget {
  @override
  State createState() {
    return _SecondScreenState();
  }
}
class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigation deme'),),
      body: Center(
        child: RaisedButton(
            child: Text('Second screen'),
            onPressed: () {
              Navigator.pop(context);
            }
        ),
      ),
    );
  }
}


class MyTestApp extends StatelessWidget{

  @override
  Widget build( BuildContext context) {

    return MaterialApp(
      title: 'Flutter UI basic 1',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Top Lakes'),
          ),
          body: Image.asset(
            'images/ganen.jpg',
            width: 600.0,
            height: 240.0,
            // cover 类似于 Android 开发中的 centerCrop，其他一些类型，读者可以查看
            // https://docs.flutter.io/flutter/painting/BoxFit-class.html
            fit: BoxFit.cover,

          )
      ),
    );
  }

}


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
          //child: ImageWidget(),
          //child: RollingButton(),
          //child: MessageForm(),
          //child: ButtonWidget(),
          //child: ContainerWidget(),
          //child: RowWidget(),
          //child: ExpandedWidget(),
          child: StackWidget(),

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

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return Row(
    return Column(
      // 只有一个子元素的 widget，一般使用 child 参数来设置；Row 可以包含多个子控件，
      // 对应的则是 children。
      children: <Widget>[
        Text('text1'),
        Text('text2'),
        Text('text3'),
        Text('text4'),
      ],
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          // 占一行的 2/3
          flex: 2,
          child: RaisedButton(child: Text('btn1'),),
        ),
        Expanded(
          // 占一行的 1/3
          flex: 1,
          child: RaisedButton(child: Text('btn2'),),
        ),
      ],
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

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      "http://img5.imgtn.bdimg.com/it/u=1069305511,3761776448&fm=26&gp=0.jpg",
      width: 200.0,
      height: 150.0,
    );
  }
}

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('text'),
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(4.0),
      width: 80.0,
      decoration: BoxDecoration(
        // 背景色
        color: Colors.grey,
        // 圆角
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}


class ButtonWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var flatButton = FlatButton(
      onPressed: () => print('FlatButton pressed'),
      child: Text('BUTTON'),
    );
    var raisedButton = RaisedButton(
      onPressed: () => print('RaisedButton pressed'),
      child: Text('BUTTON'),
    );
    return raisedButton;
  }
}

class MessageForm extends StatefulWidget {
  @override
  State createState() {
    return _MessageFormState();
  }
}

class _MessageFormState extends State<MessageForm> {
  final editController = TextEditingController();

  // 对象被从 widget 树里永久移除的时候调用 dispose 方法（可以理解为对象要销毁了）
  // 这里我们需要主动再调用 editController.dispose() 以释放资源
  @override
  void dispose() {
    super.dispose();
    editController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          // 我们让输入框占满一行里除按钮外的所有空间
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Input message',
                  contentPadding: EdgeInsets.all(0.0),
                ),
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.black54
                ),
                controller: editController,
                // 自动获取焦点。这样在页面打开时就会自动弹出输入法
                autofocus: true,
              ),
            ),
          ),
          InkWell(
            onTap: () => debugPrint('send: ${editController.text}'),
            onDoubleTap: () => debugPrint('double tapped'),
            onLongPress: () => debugPrint('long pressed'),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(5.0)
              ),
              child: Text('Send'),
            ),
          )
        ],
      ),
    );
  }
}
//class _MessageFormState extends State<MessageForm> {
//  var editController = TextEditingController();
//
//  @override
//  Widget build(BuildContext context) {
//    // Row、Expand 都是用于布局的控件
//    return Row(
//      children: <Widget>[
//        Expanded(
//          child: TextField(
//            controller: editController,
//          ),
//        ),
//        RaisedButton(
//          child: Text("click"),
//          //onPressed: () => print('text inputted: ${editController.text}'),
//            onPressed: () {
//              showDialog(
//                // 第一个 context 是参数名，第二个 context 是 State 的成员变量
//                  context: context,
//                  builder: (_) {
//                    return AlertDialog(
//                      // dialog 的内容
//                      content: Text(editController.text),
//                      // actions 设置 dialog 的按钮
//                      actions: <Widget>[
//                        FlatButton(
//                          child: Text('OK'),
//                          // 用户点击按钮后，关闭弹框
//                          onPressed: () => Navigator.pop(context),
//                        )
//                      ],
//                    );
//                  }
//              );
//            }
//
//        )
//      ],
//    );
//  }

//  @override
//  void dispose() {
//    super.dispose();
//    // 手动调用 controller 的 dispose 方法以释放资源
//    editController.dispose();
//  }
//}



//重叠
class StackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // Aligment 的取值范围为 [-1, 1]，Stack 中心为 (0, 0)，
      // 这里设置为 (-0.5, -0.5) 后，可以让文本对齐到 Container 的 1/4 处
      alignment: const Alignment(-0.5, -0.5),
      children: <Widget>[
        Container(
          width: 200.0,
          height: 200.0,
          color: Colors.blue,
        ),
        Text('foobar'),
      ],
    );
  }
}



class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // final wordPair = new WordPair.random(); // 新增了这一行
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new RandomWords(),
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('appBar to Flutter'),
//        ),
//        body: new Center(
//          // 这里把之前的 "const" 换成了 "new".
//          //child: const Text('Hello World'),   // 我们不用这样的方式生成文字了
//          //child: new Text(wordPair.asPascalCase), // 这是新的文字生成方式
//          child: new RandomWords(),
//        ),
//      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  // 添加如下两行
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);


  @override // 新增代码片段 - 开始 ...
  Widget build(BuildContext context) {
    final WordPair wordPair = new WordPair.random();

   // return new Text(wordPair.asPascalCase);
    return new Scaffold (                   // 代码从这里...
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }
  Widget _buildRow(WordPair pair) {
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),

        // 对于每个建议的单词对都会调用一次 itemBuilder，
        // 然后将单词对添加到 ListTile 行中
        // 在偶数行，该函数会为单词对添加一个 ListTile row.
        // 在奇数行，该行书湖添加一个分割线 widget，来分隔相邻的词对。
        // 注意，在小屏幕上，分割线看起来可能比较吃力。

        itemBuilder: (BuildContext _context, int i) {
          // 在每一列之前，添加一个1像素高的分隔线widget
          if (i.isOdd) {
            return new Divider();
          }

          // 语法 "i ~/ 2" 表示i除以2，但返回值是整形（向下取整）
          // 比如 i 为：1, 2, 3, 4, 5 时，结果为 0, 1, 1, 2, 2，
          // 这可以计算出 ListView 中减去分隔线后的实际单词对数量
          final int index = i ~/ 2;
          // 如果是建议列表中最后一个单词对
          if (index >= _suggestions.length) {
            // ...接着再生成10个单词对，然后添加到建议列表
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        }
    );
  }// ... 新增的代码片段 - 结束
}


