import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'; // 新增了这一行

void main() => runApp(MaterialApp(
      title: "Container 布局容器示例",
      home: LayoutDemo(),
    ));


class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var center = Center(
      child: new Stack(
        children: <Widget>[
          Image.network("https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1227225970,2738249189&fm=173&app=25&f=JPEG?w=500&h=358&s=FE28AE465FA3E8DA1AAB3A7C0300C079"),
          Positioned(
            bottom: 50,
              right: 50,
              child:  Text(
                "hi flutter",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: "serif",
                  color: Colors.white
                ),

              ),
          )
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Container 布局容器示例 text"),
      ),
      body: center,
    );
  }
}

class RowLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var row = Row(
      children: <Widget>[
        new Expanded(
            child: Text("左侧文本",
              textAlign: TextAlign.center,
           )
        ),
        new Expanded(
            child: Text("中间文本",
              textAlign: TextAlign.center,
            )
        ),
        new Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: FlutterLogo(),
            )
        ),
      ],

    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Container 布局容器示例 text"),
      ),
      body: row,
    );
  }
}

class AlignLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      children: <Widget>[
        //左上角
        new Align(
          alignment: FractionalOffset(0.0, 0.0),
          child: new Image.asset(
            "images/ganen.jpg",
            width: 120,
            height: 128,
          ),
        ),
        //右上角
        new Align(
          alignment: FractionalOffset(1.0, 0.0),
          child: new Image.asset(
            "images/hua.jpg",
            width: 120,
            height: 128,
          ),
        ),
        new Align(
          alignment: FractionalOffset.center,
          child: new Image.asset(
            "images/ganen.jpg",
            width: 120,
            height: 128,
          ),
        ),
        new Align(
          alignment: FractionalOffset.bottomLeft,
          child: new Image.asset(
            "images/katongshu.png",
            width: 120,
            height: 128,
          ),
        ),
        new Align(
          alignment: FractionalOffset.bottomRight,
          child: new Image.asset(
            "images/xianhua.jpg",
            width: 120,
            height: 128,
          ),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Container 布局容器示例 text"),
      ),
      body: stack,
    );
  }
}

class CenterLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var center = Center(
      child: Text(
        "Hello Center",
        style: TextStyle(fontSize: 36.0),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Container 布局容器示例 text"),
      ),
      body: center,
    );
  }
}

class ContainerLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget container = new Container(
      //添加装饰效果
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      //边框宽度为 10， 颜色为蓝灰色
                      border: Border.all(width: 10, color: Colors.blueGrey),
                      //边框弧度 为 8.0
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(8.0))),
                  //边距
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset("images/ganen.jpg"),
                ),
              ),
              new Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      //边框宽度为 10， 颜色为蓝灰色
                      border: Border.all(width: 10, color: Colors.blueGrey),
                      //边框弧度 为 8.0
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(8.0))),
                  //边距
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset("images/hua.jpg"),
                ),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      //边框宽度为 10， 颜色为蓝灰色
                      border: Border.all(width: 10, color: Colors.blueGrey),
                      //边框弧度 为 8.0
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(8.0))),
                  //边距
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset("images/xianhua.jpg"),
                ),
              ),
              new Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      //边框宽度为 10， 颜色为蓝灰色
                      border: Border.all(width: 10, color: Colors.blueGrey),
                      //边框弧度 为 8.0
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(8.0))),
                  //边距
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset("images/katongshu.png"),
                ),
              )
            ],
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Container 布局容器示例 text"),
      ),
      body: container,
    );
  }
}
