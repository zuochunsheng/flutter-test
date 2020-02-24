import 'dart:math';
import 'Impostor.dart';
import 'Person.dart';
import 'Point.dart';

import 'package:flutter/widgets.dart';
class Test {

  void main() {

    //printAbc();

    printCla();


  }


  // 基础
  void printAbc (){
     // 1 var
//    使用 var 可以声明一个不定类型的变量，但当该变量被第一次赋值时，该变量类型就被确定。
//    从此，你不能再改变该变量的类型

//      bool done = true;
//      int num = 2;
//      double x = 3.14;

//      final 跟 Java 里的 final 一样，表示一个运行时常量（在程序运行的时候赋值，赋值后值不再改变）。
//      const 表示一个编译时常量，在程序编译的时候它的值就确定了。
//      final bool visible = false;
//      final int amount = 100;
//      final double y = 2.7;
//
//      const bool debug = true;
//      const int sum = 42;
//      const double z = 1.2;


      // 2
      var done = true;
      var num = 2;
      var x = 3.14;

      final visible = false;
      final amount = 100;
      final y = 2.7;

      const debug = true;
      const sum = 42;
      const z = 1.2;

//      Dart 里的 String 跟 Java 中的一样，是不可变对象；
//      不同的是，检测两个 String 的内容是否一样事，我们使用 == 进行比较；
//      如果要测试两个对象是否是同一个对象（indentity test），使用 identical 函数。
      var str = ' foo';
      var str2 = str.toUpperCase();
      var str3 = str.trim();
      assert(str == str2);
      assert(identical(str, str2));



      // 使用构造函数创建对象
      // 跟 var list = new List<int>(); 一样
      var list = List<int>();
      list.add(1);
      list.add(2);

// 通过字面量创建对象，list 的泛型参数可以从变量定义推断出来。
// 推荐使用字面量方式创建对象
      var list2 = [1, 2];
// 没有元素，显式指定泛型参数为 int
      var list3 = <int>[];
      list3.add(1);
      list3.add(2);
      //list3.add("4");

    //const 常量数组
      var list4 = const[1, 2];
// list4 指向的是一个常量，我们不能给它添加元素（不能修改它）
      //list4.add(3);       // error
// list4 本身不是一个常量，所以它可以指向另一个对象
      list4 = [4, 5];     // it's fine



      const list5 = [1, 2];
// 相当于 const list5 = const[1, 2];
  //    list5.add(3);       // error

// Dart 同样提供了 for-in 循环。
// 因为语音设计时就考虑到了这个需求，in 在 Dart 里是一个关键字
      var list6 = [1, 3, 5, 7];
      for (var ex in list6) {
        //print(ex);
        debugPrint('_onPressed');

      }



      //map  创建方式
      var map = Map();
      //var map = Map<String, int>();
// 添加
      map['foo'] = 1;
      map['bar'] = 3;
// 修改
      map['foo'] = 4;
// 对应的 key 不存在时，返回 null
      if (map['foobar'] == null) {
        //print('map does not contain foobar');
      }


      var map3 = {};
      //var map3 = <String, String>{};
      map3['first'] = 'partridge';
      map3['second'] = 'turtledoves';
      map3['fifth'] = 'golden rings';

  //创建一个编译时的常量 map:
      var map2 = const {
        'foo': 2,
        'bar': 4,
      };



    var test_var;
    print("value = $test_var");// null

//    var x = 1;
//    var hex = 0xDEADBEEF;
//
//    String oneAsString = 1.toString();
//    var one = int.parse('1');
//
//    var y = 1.1;
//    var exponents = 1.42e5;
//    double z = 1;  // 将会自动的转换为 1.0
//
//    String piAsString = 3.14159.toStringAsFixed(2);//3.14
//    var onePointOne = double.parse('1.1');


//    var s = 'string interpolation';
//    s = 'That deserves all caps.${s.toUpperCase()} is very handy!' ;
//
//    var num = 1000;
//    var tips = 'The user num is $num.';
//
//
//    //通过 r 前缀，可以创建强制单行的字符串。
//    // 使用 r
//    var sss = r'In a raw string, not even \ngets special treatment.';


//// Check for an empty string.
//    var fullName = '';
//    assert(fullName.isEmpty);
//
//// Check for zero.
//    var hitPoints = 0;
//    assert(hitPoints <= 0);
//
//// Check for null.
//    var unicorn;
//    assert(unicorn == null);
//
//// Check for NaN.
//    var iMeantToDoThis = 0 / 0;
//    assert(iMeantToDoThis.isNaN);



    var arrayInt = [1, 2, 3];
    //Dart 会自动推导数组的类型是 List<int>，你不能向里添加非 int 类型的对象。
    //arrayInt.add("12");错误


    var array = ["it's string[]", 1, 2, 3];
    array.add(5);
    print(array);


  }

  //类
  void printCla(){

    //var p = Point();

    //var p = Point.origin();

    //var p  = Point(); //error
    //var p1 = Point(1, 1);
    //var p2 = new Point(1, 1);

    //Dart 在调用对象属性前，支持先检查对象是否为 null。
    //p?.y = 5;

    //级联操作符 ..


    var p = new Point(2, 3);
    print(p.distanceFromOrigin);


    //类型检测
    //使用 is 关键字判断一个对象的类型是否属于一个类。
//    print(p is Point);
//    print(p is! Point);

     //Dart 使用 as 关键字来进行强制类型转换。
      var emp;
     (emp as Point).x = 'Bob';

     //通过 runtimeType 属性，可以获得一个对象的类型。
     print('The type of a is ${emp.runtimeType}');


    String greetBob(Person person) => person.greet('Bob');
    print(greetBob(Person('Kathy')));

    print(greetBob(Impostor()));

  }





}