import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/pages/FirstScreen.dart';
import 'package:flutter_app/pages/ProductList.dart';

import 'bean/Product.dart';
import 'chenBingCode/baseWidgets.dart';
import 'formLofinTest.dart';


var random = Random();
var colors = [
  Colors.redAccent,
  Colors.green,
  Colors.deepOrangeAccent,
  Colors.lime,
  Colors.blue,
  Colors.black87
];



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
////        home: new ProductList(
////            products:
////            new List.generate(20, (i)=> new Product("商品key $i","商品详细信息 value $i")),
////        ),
//        home:
//        //MyStatefulWidget()
//        Scaffold(
//          appBar: AppBar(title: Text("rows"),),
//
//          body: Container(
//            color: Colors.grey[300],
//            child: Center(
//              child:
//              //_buildIcons(),
//              //_buildImage(),
//              //_buildStack(),
//              // text ,
//              //buildRowImg ,
//              // flatButton ,
//              //textField
//              wrap
//            ),
//          ),
//        ),
//
//    ));



void main() => runApp(MaterialApp(
  title: "Container 布局容器示例",
  home:
  //MyStatefulWidget()
  Scaffold(
    appBar: AppBar(title: Text("rows"),),

    body: Container(
      color: Colors.grey[300],
      child: Center(
          child:

          customScrollView
      ),
    ),
  ),

));




var customScrollView = CustomScrollView(
  scrollDirection: Axis.vertical,
  //是否逆向排布子 Widget。默认为false
  //reverse: false,
  //controller: ,
  //是否由内容的大小决定 ScrollView 的大小
  shrinkWrap: true,
  //控制滚动效果。默认 AlwaysScrollableScrollPhysics
//  physics: ScrollPhysics(
//
//  ),
  //内容区域的锚点（起始位置）。比如设为 0.5，内容区域将会从 ScrollView 中间位置开始
   anchor: 0,
  // 子 Widget
  slivers: <Widget>[
    // 第一个放 SliverAppBar
    const SliverAppBar(
//      leading: IconButton(
//        icon: Icon(Icons.arrow_back),//Icons.menu
//      ),
      title: Text('SliverAppBar'),
      backgroundColor: Colors.amber,
      pinned: false,
      floating: true,
      snap: true,
      expandedHeight: 250.0,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text('FlexibleSpaceBar'),
        background: Image(
          image: AssetImage('images/xianhua.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
    SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 0.0,
        childAspectRatio: 2.0,
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: colors[ random.nextInt(colors.length)],
            child: Text(
              'grid item $index',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  decoration: TextDecoration.none),
            ),
          );
        },
        childCount: 20,
      ),
    ),
    SliverFixedExtentList(
        delegate:
        SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            height: 80,
            color: colors[random.nextInt(colors.length)],
            child: Text('list item $index',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    decoration: TextDecoration.none)),
          );
        }, childCount: 10
      )
    ),
  ],
);






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
