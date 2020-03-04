import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/pages/FirstScreen.dart';
import 'package:flutter_app/pages/ProductList.dart';

import 'bean/Product.dart';
import 'formLofinTest.dart';

//void main() => runApp(MaterialApp(
//      title: "Container 布局容器示例",
//      //home: LayoutDemo(),
//      //home: RowLayoutDemo(),
//      //home: MyApp(items: new List<String>.generate(500, (i) => "Item $i"),)
//      //home: FengjingquDemo(),
//
//      //home: LoginPage(),
//      //home: FirstScreen(),
//
//        home: new ProductList(
//            products:
//            new List.generate(20, (i)=> new Product("商品key $i","商品详细信息 value $i")),
//        ),
//
//
//    ));

void main() => runApp(
        // 在中心
        Center(
            child:
                // container
                // raiseButton
                flatButton
                //iconButton


        )
);


var flatButton =  FlatButton(
  child: Text("normal"),
  onPressed: () => {},
  textColor: Colors.black26,//文字颜色
  color: Colors.redAccent,// 背景颜色
//  disabledColor: ,//禁用时 背景颜色
//  disabledTextColor: ,//禁用时 文字颜色
  highlightColor: Colors.blueAccent,//按下时文字颜色
  splashColor:Colors.yellow ,//点击时，水波动画中水波的颜色
  padding: EdgeInsets.all(4.0),
  //colorBrightness: ,//Button 主题，默认是浅色主题
//  shape:  ,//Button 的形状
);

var iconButton = IconButton(
  icon: Icon(Icons.thumb_up),
  //onPressed: () => {},
  tooltip: 'You clicked me!',
);

var raiseButton = RaisedButton(
  child: Text("normal"),
  onPressed: () => {
    debugPrint("raiseButton")
  },
  elevation:5.0,
);

// 添加 Container
var container = Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(color: Colors.white),
    // margin: ,
    //  padding: ,
    //  alignment: Alignment.bottomLeft,
//            foregroundDecoration:new  BoxDecoration(
//              color: Colors.transparent,
//              // 设置边框
//              border: Border.all(width: 4, color: Colors.black38),
//            ),
    // 将子 Widget 设置为居中
    child: Center(
        // 添加 Container
        child: Container(
      width: 150.0,
      height: 150.0,
      // 设置边框装饰
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          // 设置边框
          border: Border.all(width: 10, color: Colors.black38),
          // 设置圆角
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin: EdgeInsets.all(4),
      // 添加图片
      child: Image.asset("images/ganen.jpg"),
    )));

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
