

import 'package:flutter/material.dart';
import 'package:flutter_app/dartPage/Rectangle.dart';

// Flutter 提供了 SafeArea，用于包裹视图，让视图可以自动避开遮挡，完整的展示出来。
//root 节点使用的是 Scaffold 的话，已经自动处理了这些不安全的因素，所以就不用添加 SafeArea 了
var safeArea = SafeArea(
    child: MyWidget(Colors.green),
);


var list = ListView(
  children: <Widget>[
    MyWidget(Colors.green),
    Opacity(
      opacity: 0.3,
      child:MyWidget(Colors.blue),
    ),
    MyWidget(Colors.yellow)
  ],
);

class MyWidget extends StatelessWidget  {
  MaterialColor color;
  MyWidget(this.color);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100,
      height: 50,
      color: color,
    );
  }
}

//ClipRRect 用于将一个 Widget 剪裁为圆角矩形。
var clipRRect = ClipRRect(
  borderRadius: BorderRadius.all(Radius.circular(12)),
   //剪裁模式。Clip.antiAlias-消除锯齿；Clip.hardEdge-有锯齿
   clipBehavior: Clip.hardEdge,
   // 需要剪裁的 Widget
  child: Image.asset('images/katongshu.png'),
);


//ClipOval 用于将一个 Widget 裁剪为椭圆形。
var clipOval = ClipOval(
  clipBehavior: Clip.hardEdge,
  child: Image.asset('images/katongshu.png'),
);

//ClipPath 用于将一个 Widget 裁剪为自定义的形状。
var clipPath = ClipPath(
  clipper: ShapeBorderClipper(
      shape:
      CircleBorder()
     //BeveledRectangleBorder()


  ),
  //剪裁模式。Clip.antiAlias-消除锯齿；Clip.hardEdge-有锯齿
  //clipBehavior: Clip.hardEdge,
  child: Image.asset('images/katongshu.png'),
);





var boxDecoration  = Container(
  width: 400,
  height: 400,
  decoration: BoxDecoration(
    //背景色的混合模式。默认为 [BlendMode.srcOver]。
    //backgroundBlendMode: BlendMode.darken,
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
