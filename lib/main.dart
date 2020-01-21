import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'fengjingqu.dart';

void main() => runApp(MaterialApp(
    title: "Container 布局容器示例",
    //home: LayoutDemo(),
    home: MyApp(
      items: new List<String>.generate(500, (i) => "Item $i"),
    )
    //home: FengjingquDemo(),
    //home: RowLayoutDemo(),
    ));

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget body = new Container();

    return Scaffold(
      appBar: AppBar(title: Text("Container 布局容器示例 text")),
      body: body,
    );
  }
}

//长列表示例
class MyApp extends StatelessWidget {
  final List<String> items;

  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = "长列表示例";
    //Widget body = new Container();
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        itemCount: items.length,
          itemBuilder: (context,index){
             return ListTile(
               leading: Icon(Icons.phone),
               title: Text("${items[index]}"),
             );
          }
      ),
    );
  }
}

class IconButtonLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget body = new Container(
        child: IconButton(
      icon: Icon(Icons.volume_up, size: 48),
      tooltip: "按下操作",
      onPressed: () {
        debugPrint("-- 按下操作 --");
      },
    ));
    return Scaffold(
      appBar: AppBar(title: Text("Container 布局容器示例 text")),
      body: body,
    );
  }
}

class BaselineLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget body = new Container(
      child: Baseline(
        baseline: 20,
        baselineType: TextBaseline.alphabetic, //对齐字符底部的水平线
        //TextBaseline.ideographic,//对齐表意字符的水平线
      ),
    );
    return Scaffold(
      appBar: AppBar(title: Text("Container 布局容器示例 text")),
      body: body,
    );
  }
}

class GridViewLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget body = new Container(
      child: GridView.extent(
        maxCrossAxisExtent: 150.0,
        //次轴的宽度
        padding: const EdgeInsets.all(4),
        mainAxisSpacing: 4.0,
        //主轴间隙
        crossAxisSpacing: 4.0,
        //次轴间隙
        children: <Widget>[
          Container(
            child: Image.asset("images/ganen.jpg"),
          ),
          Container(
            child: Image.asset("images/hua.jpg"),
          ),
          Container(
            child: Image.asset("images/xianhua.jpg"),
          ),
          Container(
            child: Image.asset("images/katongshu.png"),
          ),
          Container(
            child: Image.asset("images/ganen.jpg"),
          ),
          Container(
            child: Image.asset("images/hua.jpg"),
          ),
          Container(
            child: Image.asset("images/xianhua.jpg"),
          ),
          Container(
            child: Image.asset("images/katongshu.png"),
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(title: Text("Container 布局容器示例 text")),
      body: body,
    );
  }
}

class FractionallySizedBoxLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget body = new Container(
      color: Colors.blueGrey,
      height: 200,
      width: 200,
      child: FractionallySizedBox(
        alignment: Alignment.topLeft,
        widthFactor: 0.5,
        heightFactor: 1.5,
        child: Container(
          color: Colors.green,
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(title: Text("Container 布局容器示例 text")),
      body: body,
    );
  }
}
