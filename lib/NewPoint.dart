


import 'dart:html';

class NewPoint extends Point{
  //  Dart 使用 extends 关键字来继承一个类。
  //  特别的是，在 Dart 中，构造函数是不能被继承的。--》错误的
  //  除了默认构造函数是空参数的类，其构造函数是能够被子类自动继承的。
  //  如果子类想要调用父类的构造函数，可以使用 super 关键字。

  NewPoint(x, y):super(x, y);


  //当调用 NewPoint.newOrigin() 时，会先调用父类的 origin 构造函数，
  //然后再执行该构造函数内的表达式。
  //NewPoint.newOrigin() 形式的构造函数被成为 命名构造函数。

//  NewPoint.newOrigin():super.origin(){
//    print('$x, $y');
//  }




}