import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'formTest.dart';

void main() => runApp(MaterialApp(
      title: "Container 布局容器示例",
      //home: LayoutDemo(),
      //home: RowLayoutDemo(),
      //home: MyApp(items: new List<String>.generate(500, (i) => "Item $i"),)
      //home: FengjingquDemo(),

      home: LoginPage(),



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

