import 'dart:io';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/chenBingCode/DecorationWidgets.dart';
import 'package:flutter_app/chenBingCode/DetailScreen.dart';
import 'package:flutter_app/chenBingCode/GestureDetectorWidget.dart';
//import 'package:flutter_app/chenBingCode/SplashPage.dart';
import 'package:flutter_app/chenBingCode/Splash_Page.dart';
import 'package:flutter_app/chenBingCode/StatefulWidget.dart';
import 'package:flutter_app/chenBingCode/home_page.dart';
import 'package:flutter_app/pages/FirstScreen.dart';
import 'package:flutter_app/pages/ProductDetail.dart';
import 'package:flutter_app/pages/ProductList.dart';
import 'package:flutter_app/pages/ProductList.dart';

import 'bean/Product.dart';
import 'chenBingCode/ScrollWidgets.dart';
import 'chenBingCode/baseWidgets.dart';
import 'formLofinTest.dart';
import 'pages/SecondScreen.dart';


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
  // 设置第一个页面，即启动页
    initialRoute: '/',
    routes: {
      // 注册一个页面
      '/': (context) => SplashPage(),
      '/first': (context) => FirstScreen(),
      '/second': (context) => SecondScreen(),
      // 注册第二个页面
      '/home': (context) => HomePage(),
      '/myStatefulWidget': (context) => MyStatefulWidget(),

     // '/productList': (context) => ProductList(),
      '/productList': (context) => ProductList(products: new List.generate(20, (i)=> new Product("商品key $i","商品详细信息 value $i"),),),
      '/productDetail': (context) => ProductDetail(),
    },

  title: "Container 布局容器示例",
  //home:
  //MyStatefulWidget()
  //SplashPage()

//  Scaffold(
//    appBar: AppBar(title: Text("布局"),),
//
//    body: Container(
//      color: Colors.grey[300],
//      child: Center(
//          child:
//
//          //customScrollView
//
//          //gridCount
//          //buildGrid2()
//         // buildGrid3()
//          //buildGrid4()
//
//          //singleChildScrollView
//          //PageviewWidget()
//
//          //boxDecoration
//          //clipRRect
//          //clipOval
//          //clipPath
//
//          //list
//          //backdropFilter
//
//          //FavoriteStatefulWidget()
//          ParentWidget()
//
//      ),
//    ),
//  ),

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
