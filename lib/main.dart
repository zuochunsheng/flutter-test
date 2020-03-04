import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_app/pages/FirstScreen.dart';
import 'package:flutter_app/pages/ProductList.dart';

import 'bean/Product.dart';
import 'formLofinTest.dart';

void main() => runApp(MaterialApp(
      title: "Container 布局容器示例",
      //home: LayoutDemo(),
      //home: RowLayoutDemo(),
      //home: MyApp(items: new List<String>.generate(500, (i) => "Item $i"),)
      //home: FengjingquDemo(),

      //home: LoginPage(),
      //home: FirstScreen(),

//        home: new ProductList(
//            products:
//            new List.generate(20, (i)=> new Product("商品key $i","商品详细信息 value $i")),
//        ),
        home:
        MyStatefulWidget()
//        Scaffold(
//          appBar: AppBar(title: Text("rows"),),
//
//          body: Container(
//            color: Colors.grey[300],
//            child: Center(
//              child:
//              //_buildIcons(),
//              //_buildImage(),
//              _buildStack(),
//              // text ,
//              // buildRowImg() ,
//              // flatButton ,
//            ),
//          ),
//        ),

    ));






// 类似 祯布局
Widget _buildStack() => Stack(
  // 影响非第一个 Widget 的相对位置
  alignment: Alignment(0.5, 0.5),
  children: [
    // 第一个 Widget
    CircleAvatar(
      backgroundImage: AssetImage('assets/icons/share2.png'),
      radius: 100,
    ),
    // 第二个 Widget
    Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.black45,
      ),
      child: Text(
        'CoorChice',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
    Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black45,
      ),
      child: Column(
         children: <Widget>[
           Text("logo",
               style: TextStyle(
                   color: Colors.white
               ),
           ),
           FlutterLogo(),
         ],

      ),
    )
  ],
);

Widget _buildImage() => Center(
  child:
    // 资源图片
    //new Image.asset('images/ganen.jpg');
    //网络图片

    // 本地文件图片
    //new Image.file(new File("/Users/zuochunsheng/Desktop/android-demo/flutter-test/localImages/sg.png"));

    // Uint8List图片
    //new Image.memory(bytes),

    //使用ImageProvider加载图片
    //new Image(image: new NetworkImage("https://flutter.io/images/homepage/screenshot-2.png"));

    //网络图片
    Image.network(
      //'https://raw.githubusercontent.com/chenBingX/img/master/其它/download.jpg',
      'https://www.baidu.com/img/bd_logo1.png',
      width: 200,
      height: 200,
      //可以配合 colorBlendMode 修改图片颜色。
      color: Colors.green,
      alignment: Alignment.center,
      repeat: ImageRepeat.repeat,

   )
);

Widget _buildIcons() => Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Icon(Icons.account_box, color: Colors.black, size: 26),
      Icon(Icons.add_a_photo, color: Colors.black, size: 26),
      Icon(Icons.add_circle, color: Colors.black, size: 26),
      Icon(Icons.android, color: Colors.black, size: 26),
    ],
  ),
);






// StatefulWidget
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> with SingleTickerProviderStateMixin {
  int _count = 0;
  int _currentIndex = 0;
//
//  var tab3 = Tab(
//      text:"ios",
//      icon:Icon(Icons.android)
//  );
  var tabs_1  = [
    Tab(
        text:"Android",
        icon:Icon(Icons.android)
    ),
    Tab(
        text:"ios",
        icon:Icon(Icons.android)
    ),
    Tab(
        text:"abc",
        icon:Icon(Icons.android)
    )
  ];


  final List<Tab> tabs = <Tab>[
    Tab(text: '选项一',icon: Icon(Icons.add_shopping_cart),),
    Tab(text: '选项二',icon: Icon(Icons.wifi_tethering),),
    Tab(text: '选项三',icon: Icon(Icons.airline_seat_flat_angled),)
  ];

  TabController _tabController;

  @override
  void initState() {
    print('初始化 数据...');
    _tabController = new TabController(
        vsync: this,//固定写法
        length: tabs.length   //指定tab长度
    );
    super.initState();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          title: Text('Scanffold Page'),
          centerTitle: true,
          // 返回
          leading: IconButton(
              icon: Icon(Icons.arrow_back),//Icons.menu
              onPressed: () {
                Navigator.pop(context);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.share),
                onPressed: () {debugPrint("分享");},
                tooltip: 'Share Button Clicked!'),
            IconButton(
              icon: Icon(Icons.alarm),
              tooltip: "Alarm",
              onPressed: () {
                print("Alarm");
              },
            ),
            IconButton(
              icon: Icon(Icons.home),
              tooltip: "Home",
              onPressed: () {
                print("Home");
              },
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) =>
              <PopupMenuItem<String>>[
                PopupMenuItem<String>(child: Text("热度"), value: "hot",),
                PopupMenuItem<String>(child: Text("最新"), value: "new",),
              ],
              onSelected: (String action) {
                switch (action) {
                  case "hot":
                    print("hot");
                    break;
                  case "new":
                    print("new");
                    break;
                }
              },
              onCanceled: () {
                print("onCanceled");
              },
            )
          ],
          elevation: 5.0,
          backgroundColor: Colors.yellow,
          //状态栏
          brightness: Brightness.dark,
          titleSpacing: 10,
          toolbarOpacity: 1.0,
          bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              //isScrollable: true,
              controller: _tabController,
              tabs:tabs,
              //tabs_1.map((e) => Tab()).toList(),
              onTap: (index){
                setState(() {
                  // ..
                  _count++;
                });
              },
          ),

        ),
      body: Center(
        child: Text('You have pressed the button $_count times.'),
      ),
      backgroundColor: Colors.lime,
       // 是否避免键盘弹起时挡住视图。默认为true。为false键盘会覆盖在视图上
      resizeToAvoidBottomInset: false,
      //一种特殊的漂浮Button。
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _count++;
        }),
        tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      //设置floatingActionButton的位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //设置一组底部的Button
//      persistentFooterButtons: <Widget>[
//        Image.asset(
//          'images/ganen.jpg',
//          width: 100,
//          height: 50,
//        ),
//        Image.asset(
//          'images/katongshu.png',
//          width: 100,
//          height: 50,
//        ),
//      ],

      //底部导航栏。在 persistentFooterButtons 下面
      bottomNavigationBar:
      BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页'),
             // 设置当item被选中时的 icon
              activeIcon: Icon(Icons.pages)
//              Image.asset(
//                'images/ganen.jpg',
//                width: 20,
//                height: 20,
//              ),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('收藏')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              title: Text('订单')
          ),
        ],
        currentIndex: _currentIndex,
        //选中的item的颜色
        fixedColor: Colors.blue,
        //当一个item被点击的时候会回调
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            //
          });
        },
      )
//      BottomAppBar(
//        child: Container(
//          height: 50.0,
//
//        ),
//        elevation: 5,
//      ),

      //抽屉菜单
      //drawer: container,
    );
  }
}



Widget text = Text(
  'Hello,  How are you? How are you?How are you?How are you?',
  // 对齐方式
  textAlign: TextAlign.center,
  // 省略方式
  overflow: TextOverflow.clip,
   // TextOverflow.ellipsis
    //TextOverflow.fade
  // 文字风格
  style: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.deepPurpleAccent,
      fontSize: 30,
      decoration: TextDecoration.overline
         //TextDecoration.underline
         //lineThrough
         // none

  ),
  // 文字方向
  textDirection: TextDirection.ltr,
  maxLines: 2,
//  textSpan:TextSpan(
//
//  )

);

// row / column
Widget _buildRowImg() => Row(
  // 主要对齐方式
  mainAxisAlignment: MainAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.start,//start center end
                    //spaceBetween: 中间留间隙。
                    //spaceAround: 每个子 Widget 两边的间隙均分
                    //spaceEvenly: 整体均分间隙

  crossAxisAlignment: CrossAxisAlignment.start,
  //crossAxisAlignment  CrossAxisAlignment.start center end  baseline
  // strech  让children填满交叉轴方向
  children: [
    Image.asset(
      'images/ganen.jpg',
      width: 100,
      height: 100,
    ),
    Image.asset(
      'images/katongshu.png',
      width: 100,
      height: 100,
    ),

  ],
);

var flatButton =  FlatButton(
  child: Text("normal"),
  onPressed: () => {},
  textColor: Colors.black26,//文字颜色
  color: Colors.redAccent,// 背景颜色
//  disabledColor: ,//禁用时 背景颜色
//  disabledTextColor: ,//禁用时 文字颜色
  highlightColor: Colors.blueAccent,//按下时文字颜色
  splashColor:Colors.yellow ,//点击时，水波动画中水波的颜色
  padding: EdgeInsets.all(4.0),
  //colorBrightness: ,//Button 主题，默认是浅色主题
//  shape:  ,//Button 的形状
);

var iconButton = IconButton(
  icon: Icon(Icons.thumb_up),
  //onPressed: () => {},
  tooltip: 'You clicked me!',
);

var raiseButton = RaisedButton(
  child: Text("normal"),
  onPressed: () => {
    debugPrint("raiseButton")
  },
  elevation:5.0,
);

// 添加 Container
var container = Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(color: Colors.white),
    // margin: ,
    //  padding: ,
    //  alignment: Alignment.bottomLeft,
//            foregroundDecoration:new  BoxDecoration(
//              color: Colors.transparent,
//              // 设置边框
//              border: Border.all(width: 4, color: Colors.black38),
//            ),
    // 将子 Widget 设置为居中
    child: Center(
        // 添加 Container
        child: Container(
      width: 150.0,
      height: 150.0,
      // 设置边框装饰
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent,
          // 设置边框
          border: Border.all(width: 10, color: Colors.black38),
          // 设置圆角
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin: EdgeInsets.all(4),
      // 添加图片
      child: Image.asset("images/ganen.jpg"),
    )));



class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget body = new Container();

    return Scaffold(
      appBar: AppBar(title: Text("Container 布局容器示例 text")),
      body: body,
    );
  }
}
