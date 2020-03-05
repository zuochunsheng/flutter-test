


//----- Grid ----------
import 'dart:math';

import 'package:flutter/material.dart';

var gridCount = GridView.count(
  //水平子Widget之间间距
  crossAxisSpacing: 10.0,
  //垂直子Widget之间间距
  mainAxisSpacing: 30.0,
  //GridView内边距
  padding: EdgeInsets.all(10.0),
  //一行的Widget数量
  crossAxisCount: 3,
  //子Widget宽高比例
  childAspectRatio: 2.0,
  //子Widget列表
  children: getWidgetList(),
);



List<Widget> getWidgetList() {
  return getDataList().map((item) => getItemContainer(item)).toList();
}

List<String> getDataList() {
  List<String> list = [];
  for (int i = 0; i < 100; i++) {
    list.add(i.toString());
  }
  return list;
}

// 单个 item
//Widget getItemContainer(String item) {
//  return Container(
//    alignment: Alignment.center,
//    child: Text(
//      item,
//      style: TextStyle(color: Colors.white, fontSize: 20),
//    ),
//    color: Colors.blue,
//  );
//}
// 单个 item
Widget getItemContainer(String item) {
  return Container(
    width: 5.0,
    height: 5.0,
    alignment: Alignment.center,
    child: Text(
      item,
      style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    color: Colors.blue,
  );
}
//---------grid 方法二 ------

//@override  BuildContext context
Widget buildGrid() {
  List<String> datas = getDataList();
  return GridView.builder(
      itemCount: datas.length,
      itemBuilder: (BuildContext context, int index) {
        //Widget Function(BuildContext context, int index)
        return getItemContainer(datas[index]);
      },
      //SliverGridDelegateWithFixedCrossAxisCount 构建一个横轴固定数量Widget
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //横轴元素个数
          crossAxisCount: 3,
          //纵轴间距
          mainAxisSpacing: 20.0,
          //横轴间距
          crossAxisSpacing: 10.0,
          //子组件宽高长度比例
          childAspectRatio: 1.0
      ),

    );
}

//---------grid 方法三 ------
Widget buildGrid3() {
  List<String> datas = getDataList();
  return GridView.builder(

    itemCount: datas.length,
    itemBuilder: (BuildContext context, int index) {
      return getItemContainer(datas[index]);
    },
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //单个子Widget的水平最大宽度
        maxCrossAxisExtent: 200,
        //水平单个子Widget之间间距
        mainAxisSpacing: 20.0,
        //垂直单个子Widget之间间距
        crossAxisSpacing: 10.0
    ),
  );
}


//@override  BuildContext context
Widget buildGrid4() {
  List<String> datas = getDataList();
  return GridView.custom(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 20.0,
      ),
      childrenDelegate: SliverChildBuilderDelegate((context, position) {
        return getItemContainer(datas[position]);},
        childCount: datas.length
      )
  );
}


var random = Random();
var colors = [
  Colors.redAccent,
  Colors.green,
  Colors.deepOrangeAccent,
  Colors.lime,
  Colors.blue,
  Colors.black87
];

var customScrollView = CustomScrollView(
  scrollDirection: Axis.vertical,
  //是否逆向排布子 Widget。默认为false
  //reverse: false,
  //controller: ,
  //是否由内容的大小决定 ScrollView 的大小
  shrinkWrap: true,
  //控制滚动效果。默认 AlwaysScrollableScrollPhysics
//  physics: ScrollPhysics(
//
//  ),
  //内容区域的锚点（起始位置）。比如设为 0.5，内容区域将会从 ScrollView 中间位置开始
  anchor: 0,
  // 子 Widget
  slivers: <Widget>[
    // 第一个放 SliverAppBar
    const SliverAppBar(
//      leading: IconButton(
//        icon: Icon(Icons.arrow_back),//Icons.menu
//      ),
      title: Text('SliverAppBar'),
      backgroundColor: Colors.amber,
      pinned: false,
      floating: true,
      snap: true,
      expandedHeight: 250.0,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text('FlexibleSpaceBar'),
        background: Image(
          image: AssetImage('images/xianhua.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
    SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 0.0,
        childAspectRatio: 2.0,
      ),
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: colors[ random.nextInt(colors.length)],
            child: Text(
              'grid item $index',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  decoration: TextDecoration.none),
            ),
          );
        },
        childCount: 20,
      ),
    ),
    SliverFixedExtentList(
        delegate:
        SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            height: 80,
            color: colors[random.nextInt(colors.length)],
            child: Text('list item $index',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    decoration: TextDecoration.none)),
          );
        }, childCount: 10
        )
    ),
  ],
);




