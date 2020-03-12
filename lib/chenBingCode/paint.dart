

import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/material.dart';


//https://juejin.im/post/5c94c53de51d4556964a4905
//Canvas 的操作主要有两类：
//针对 Canvas 的变换操作，如平移、旋转、缩放、图层等操作。
//绘制基础图形的操作，如线段、路径、图片、几何图形等。
class MyPainter extends CustomPainter {

  @override
  paint(Canvas canvas, Size size)  {

    Paint paint = Paint()
      ..isAntiAlias = true
      ..color = Colors.redAccent
      ..strokeWidth = 10 //线宽
      ..style = PaintingStyle.fill
      ..filterQuality = FilterQuality.high
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 50)
      ..invertColors = false
      ..blendMode = BlendMode.color
   //   ..style=PaintingStyle.fill //填充
      ;
//      //..shader = ui.Gradient.linear(Offset(0, 0), Offset(100, 100), [Colors.red, Colors.blueAccent]);


   // canvas.drawLine(Offset(10, 10), Offset(250, 250), paint);

      //绘制点
//    canvas.drawPoints(
//        PointMode.points,//PointMode.polygon //这些点就会按照点数组顺序，从前往后的链接
//        [Offset(200, 200), Offset(250, 250), Offset(50, 200), Offset(100, 250)],
//        paint);


          //绘制路径
//        Path path = Path();
//        path.moveTo(100, 100);
//        path.lineTo(200, 200);
//        path.lineTo(250, 200);
//        path.lineTo(200, 250);
//        //path.close(); //闭合路径
//        canvas.drawPath(path, paint);

         //绘制矩形。
//          Rect rect = Rect.fromCircle(
//              center: Offset(size.width / 2, size.height / 2), radius: 100);
//          canvas.drawRect(rect, paint);

      //绘制圆角矩形
//      Rect rect1 = Rect.fromCircle(
//          center: Offset(size.width / 2, size.height / 2), radius: 150);
//      RRect rRect = RRect.fromRectAndRadius(rect1, Radius.circular(20));
//      canvas.drawRRect(rRect, paint);


    //绘制嵌套圆角矩形
//    Rect rect1 = Rect.fromCircle(
//        center: Offset(size.width / 2, size.height / 2), radius: 140);
//    Rect rect2 = Rect.fromCircle(
//        center: Offset(size.width / 2, size.height / 2), radius: 160);
//    RRect rRect1 = RRect.fromRectAndRadius(rect1, Radius.circular(20));
//    RRect rRect2 = RRect.fromRectAndRadius(rect2, Radius.circular(20));
//    canvas.drawDRRect(rRect2, rRect1, paint);

    //绘制圆形
    //设置空心效果 paint..style=PaintingStyle.stroke 。
//    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 100, paint);

    //绘制椭圆形
//    Rect rect = Rect.fromLTRB(size.width / 2 - 100, size.height / 2 - 50,
//        size.width / 2 + 100, size.height / 2 + 50);
//    canvas.drawOval(rect, paint);

    //绘制圆弧
//    Rect rect = Rect.fromCircle(
//        center: Offset(size.width / 2, size.height / 2), radius: 140);
//    canvas.drawArc(rect, 0, math.pi / 2, true, paint);
//
//
//    //绘制阴影
//    Path path = Path()..addRect(rect.translate(20, 0));
//    canvas.drawShadow(path, Colors.amberAccent, 20, true);

    //绘制颜色
    //使用 BlendMode.color 模式就像给此前的绘制的内容加了滤镜 🤔。
    //canvas.drawColor(Colors.redAccent, BlendMode.src);



    //绘制图片
    //Image background = Image.asset("images/ganen.jpg");
    //canvas.drawImage(background, Offset(100, 100), paint);


    //绘制图片
//    Rect dstRect = Rect.fromLTWH(0, 0, size.width, size.height);
//    canvas.drawImageRect(background, Rect.fromLTWH(0, 0, 100, 100), dstRect, paint);


//    Size imgSize = Size(
//        background.width.toDouble(), background.height.toDouble());
//    Rect dstRect = Rect.fromLTWH(0, 0, size.width, size.height);
//// 根据适配模式，计算适合的缩放尺寸
//    FittedSizes fittedSizes = applyBoxFit(
//        BoxFit.cover, imgSize, dstRect.size);
//// 获得一个图片区域中，指定大小的，居中位置处的 Rect
//    Rect inputRect = Alignment.center.inscribe(
//        fittedSizes.source, Offset.zero & imgSize);
//// 获得一个绘制区域内，指定大小的，居中位置处的 Rect
//    Rect outputRect = Alignment.center.inscribe(
//        fittedSizes.destination, dstRect);
//    canvas.drawImageRect(background, inputRect, outputRect, paint);


  }


//  shouldRepaint() 返回 true 才会进行重绘，否则就只会绘制一次。
//  你可以通过一些条件判断来决定是否每次绘制，这样能够节约系统资源。
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
