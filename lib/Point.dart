

import 'dart:math';

class Point{
  var x;
  var y;
  final num distanceFromOrigin;


  //在 Dart 中，如果一个类没有显示的定义默认的构造函数，会默认有一个空的构造函数。
  //如果有显示的定义默认的构造函数 ，默认的空的构造函数就不存在
  // 如果需要定义新的构造函数 可使用 C.origin()
//  Point(x, y){
//    this.x = x;
//    this.y = y;
//  }
  //简写
  //Point(this.x, this.y);

  //新的构造函数
//  Point.origin(){
//    x = 0;
//    y = 0;
//  }


  Point(x, y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);

}
