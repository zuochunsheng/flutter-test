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
          //_buildGridView()
          //gridCount
          //buildGrid()
         // buildGrid3()
          buildGrid4()
      ),
    ),
  ),

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
