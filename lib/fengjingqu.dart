import 'package:flutter/material.dart';



class FengjingquDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imageContainer = Image.asset(
      "images/ganen.jpg",
      width: 600,
      height: 260,
      //图片填充 整个父容器
      fit: BoxFit.cover,
    );

    var addressContainer = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              //顶部 左边对齐
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  //与下面文本镉一定距离
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    "风景区地址",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "湖北省十堰市丹江口市",
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Container(margin: const EdgeInsets.only(left: 2), child: Text("66"))
        ],
      ),
    );

    //封装
    Column buildButtonColumn(IconData icon, String label) {
      return Column(
        //垂直方向大小 最小化
        mainAxisSize: MainAxisSize.min,
        //垂直方向 居中对齐
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.lightGreen[600],
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.lightGreen[600]),
            ),
          )
        ],
      );
    }

    //按钮部分
    var buttonsContainer = Container(
      child: Row(
        //水平方向均匀排列每个元素
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonColumn(Icons.call, "电话"),
          buildButtonColumn(Icons.near_me, "导航"),
          buildButtonColumn(Icons.share, "分享")
        ],
      ),
    );

    //
    Widget textContainer = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        """
          在之前我们已经介绍过Dart语言的相关特性，读者可以翻看一下，
       如果读者已经熟悉Dart语法，可以跳过本节，如果你还不了解Dart，也不用担心，
       按照笔者经验，如果你有过其他编程语言经验（尤其是Java和JavaScript）
       的话会非常容易上手Dart。当然，如果你是iOS开发者，也不用担心，
       Dart中也有一些与Swift比较相似的特性，如命名参数等，笔者当时学习Dart时，
       只是花了一个小时，看完Dart官网的Language Tour，就开始动手写Flutter了。

          在笔者看来，Dart的设计目标应该是同时借鉴了Java和JavaScript。
        Dart在静态语法方面和Java非常相似，如类型定义、函数声明、泛型等，
        而在动态特性方面又和JavaScript很像，如函数式特性、异步支持等。
        除了融合Java和JavaScript语言之所长之外，Dart也具有一些其它具有表现力的语法，
        如可选命名参数、..（级联运算符）和?.（条件成员访问运算符）以及??（判空赋值运算符）。
        其实，对编程语言了解比较多的读者会发现，在Dart中其实看到的不仅有Java和JavaScript的影子，
        它还具有其它编程语言中的身影，如命名参数在Objective-C和Swift中早就很普遍，
        而??操作符在PHP 7.0语法中就已经存在了，因此我们可以看到Google对Dart语言给予厚望，
        是想把Dart打造成一门集百家之所长的编程语言。

           接下来，我们先对Dart语法做一个简单的介绍，然后再将Dart与JavaScript
         和Java做一个简要的对比，方便读者更好的理解。
        """,
        //自动换行
        softWrap: true,
      ),
    );

    List<Widget> list = <Widget>[
      //景区图片
      imageContainer,
      //地址
      addressContainer,
      //按钮组
      buttonsContainer,
      //介绍文本
      textContainer
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Container 布局容器示例 text")),
      body: ListView(
        children: list,
      ),
    );
  }
}

//
class ListViewLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[
      new ListTile(
        title: Text(
          "广州市黄埔大道建中路点",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
        ),
        subtitle: Text("subtitle 0"),
        //左边图标
        leading: Icon(
          Icons.fastfood,
          color: Colors.orange,
        ),
      ),
      new ListTile(
        title: Text(
          "广州市白云大道建中路点",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
        ),
        subtitle: Text("subtitle 1"),
        leading: Icon(
          Icons.airplay,
          color: Colors.blue,
        ),
      ),
      new ListTile(
        title: Text(
          "广州市中山大道建中路点",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
        ),
        subtitle: Text("subtitle 2"),
        leading: Icon(
          Icons.local_hospital,
          color: Colors.green,
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: Text("Container 布局容器示例 text")),
      body: Center(
        child: ListView(
          children: list,
        ),
      ),
    );
  }
}

//重叠布局
class StackLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var center = Center(
      child: new Stack(
        children: <Widget>[
          Image.network(
              "https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1227225970,2738249189&fm=173&app=25&f=JPEG?w=500&h=358&s=FE28AE465FA3E8DA1AAB3A7C0300C079"),
          //定位
          Positioned(
            bottom: 50,
            right: 50,
            child: Text(
              "hi flutter",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: "serif",
                  color: Colors.white
              ),
            ),
          )
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Container 布局容器示例 text"),
      ),
      body: center,
    );
  }
}

class RowLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var row = Row(
      children: <Widget>[
        new Expanded(
            child: Text(
          "左侧文本",
          textAlign: TextAlign.center,
        )),
        new Expanded(
            child: Text(
          "中间文本",
          textAlign: TextAlign.center,
        )),
        new Expanded(
//            child: Container(
//                width: 50,
//                height: 50,
                child: FittedBox(
                    fit: BoxFit.contain,
                    child: FlutterLogo(),
        ))
       // )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Container 布局容器示例 text"),
      ),
      body: row,
    );
  }
}

class AlignLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      children: <Widget>[
        //左上角
        new Align(
          alignment: FractionalOffset(0.0, 0.0),
          child: new Image.asset(
            "images/ganen.jpg",
            width: 120,
            height: 128,
          ),
        ),
        //右上角
        new Align(
          alignment: FractionalOffset(1.0, 0.0),
          child: new Image.asset(
            "images/hua.jpg",
            width: 120,
            height: 128,
          ),
        ),
        new Align(
          alignment: FractionalOffset.center,
          child: new Image.asset(
            "images/ganen.jpg",
            width: 120,
            height: 128,
          ),
        ),
        new Align(
          alignment: FractionalOffset.bottomLeft,
          child: new Image.asset(
            "images/katongshu.png",
            width: 120,
            height: 128,
          ),
        ),
        new Align(
          alignment: FractionalOffset.bottomRight,
          child: new Image.asset(
            "images/xianhua.jpg",
            width: 120,
            height: 128,
          ),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Container 布局容器示例 text"),
      ),
      body: stack,
    );
  }
}

class CenterLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var center = Center(
      child: Text(
        "Hello Center",
        style: TextStyle(fontSize: 36.0),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Container 布局容器示例 text"),
      ),
      body: center,
    );
  }
}

//常用
class ContainerLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget container = new Container(
      //添加装饰效果
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      //边框宽度为 10， 颜色为蓝灰色
                      border: Border.all(width: 10, color: Colors.blueGrey),
                      //边框弧度 为 8.0
                      borderRadius: const BorderRadius.all(const Radius.circular(8.0))
                  ),
                  //边距
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset("images/ganen.jpg"),
                ),
              ),
              new Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      //边框宽度为 10， 颜色为蓝灰色
                      border: Border.all(width: 10, color: Colors.blueGrey),
                      //边框弧度 为 8.0
                      borderRadius: const BorderRadius.all(const Radius.circular(8.0))),
                  //边距
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset("images/hua.jpg"),
                ),
              )
            ],
          ),
          new Row(
            children: <Widget>[
              new Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      //边框宽度为 10， 颜色为蓝灰色
                      border: Border.all(width: 10, color: Colors.blueGrey),
                      //边框弧度 为 8.0
                      borderRadius: const BorderRadius.all(const Radius.circular(8.0))),
                  //边距
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset("images/xianhua.jpg"),
                ),
              ),
              new Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      //边框宽度为 10， 颜色为蓝灰色
                      border: Border.all(width: 10, color: Colors.blueGrey),
                      //边框弧度 为 8.0
                      borderRadius: const BorderRadius.all(const Radius.circular(8.0))),
                  //边距
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset("images/katongshu.png"),
                ),
              )
            ],
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Container 布局容器示例 text"),
      ),
      body: container,
    );
  }
}
