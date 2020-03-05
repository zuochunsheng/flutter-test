

import 'package:flutter/material.dart';

var boxDecoration  = Container(
  width: 400,
  height: 400,
  decoration: BoxDecoration(
    //背景色的混合模式。默认为 [BlendMode.srcOver]。
    backgroundBlendMode: BlendMode.darken,
    // 背景色
    color: Colors.white,
    // 绘制区域的形状。默认为 BoxShape.rectangle
    shape: BoxShape.circle,
    //绘制图片
    image: DecorationImage(
        image: ExactAssetImage("images/katongshu.png"),
        fit: BoxFit.cover
    ),
    // 边框
    border: Border.all(
        color: Colors.lightBlueAccent,
        width: 8
    ),
    //borderRadius: BorderRadius.all(Radius.circular(8)),
    //gradient: Gradient.lerp(22, 22, 22)
  ),

  child: Center(
    child: Text(
      "Box Decoration",
      //textDirection: TextDirection.ltr,
      style: TextStyle(
          color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
    ),
  ),
);
