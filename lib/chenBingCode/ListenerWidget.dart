

import 'package:flutter/material.dart';


//还是那套用法，使用它去包裹要处理事件的 Widget 节点，就相当于使节点获得处理事件的能力。
//var lister = Listener(
//  onPointerUp: (e){
//    Navigator.pop(context);
//  },
//  child: Container(
//    height: 80,
//    color: Colors.blue,
//    alignment: Alignment.center,
//    child: Text(
//      text,
//      style: TextStyle(
//          color: Colors.white, decoration: TextDecoration.none),
//    ),
//  ),
//);


//不接收触摸事件
//var ignorePointer = IgnorePointer(
//  //ignoring: true,
//  child: MyWidget(),
//);