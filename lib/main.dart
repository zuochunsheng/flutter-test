import 'dart:io';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/pages/FirstScreen.dart';
import 'package:flutter_app/pages/ProductList.dart';

import 'bean/Product.dart';
import 'chenBingCode/ScrollWidgets.dart';
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
    appBar: AppBar(title: Text("布局"),),

    body: Container(
      color: Colors.grey[300],
      child: Center(
          child:

          //customScrollView

          //gridCount
          //buildGrid2()
         // buildGrid3()
          //buildGrid4()

          singleChildScrollView
      ),
    ),
  ),

));


// pageView
// SingleChildScrollView
var singleChildScrollView = SingleChildScrollView(
  child: Column(
    children: _buildColumnItems(),
  ),
);




_buildColumnItems() {
  List<Widget> items =[];
  for (var i = 0; i < 50; i++) {
    items.add(Container(
      alignment: Alignment.center,
      height: 150,
      color: colors[random.nextInt(colors.length)],
    ));
  }
  return items;
}


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
