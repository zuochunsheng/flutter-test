import 'dart:math';
class Test {

    void print (){
     // 1
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
      assert(!identical(str, str2));



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

      var list4 = const[1, 2];
// list4 指向的是一个常量，我们不能给它添加元素（不能修改它）
      list4.add(3);       // error
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
       // debugPrint('_onPressed');
        print();
      }



      var map = Map<String, int>();
// 添加
      map['foo'] = 1;
      map['bar'] = 3;
// 修改
      map['foo'] = 4;
// 对应的 key 不存在时，返回 null
      if (map['foobar'] == null) {
        //print('map does not contain foobar');
      }

      var map2 = const {
        'foo': 2,
        'bar': 4,
      };
      var map3 = <String, String>{};

    }




}