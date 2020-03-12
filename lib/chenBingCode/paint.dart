

import 'package:flutter/material.dart';



//Canvas 的操作主要有两类：
//针对 Canvas 的变换操作，如平移、旋转、缩放、图层等操作。
//绘制基础图形的操作，如线段、路径、图片、几何图形等。
class MyPainter extends CustomPainter {

  @override
  paint(Canvas canvas, Size size)  {

    Paint paint = Paint()
      ..isAntiAlias = true
      ..color = Colors.redAccent
      ..strokeWidth = 10
      ..style = PaintingStyle.fill
      ..filterQuality = FilterQuality.high
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 50)
      ..invertColors = false
      ..blendMode = BlendMode.color ;
      //..shader = ui.Gradient.linear(Offset(0, 0), Offset(100, 100), [Colors.red, Colors.blueAccent]);


    canvas.drawLine(Offset(10, 10), Offset(250, 250), paint);

  }

//  shouldRepaint() 返回 true 才会进行重绘，否则就只会绘制一次。
//  你可以通过一些条件判断来决定是否每次绘制，这样能够节约系统资源。
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
