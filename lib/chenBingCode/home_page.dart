
import 'package:flutter/material.dart';
import 'package:flutter_app/bean/PageData.dart';
import 'package:flutter_app/chenBingCode/notification_page.dart';
import 'package:flutter_app/chenBingCode/HttpClient.dart';




class HomePage extends StatelessWidget {
  final PageData data;

  // 带所需参数的构造函数
  const HomePage({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Home Page'),
            ),
            body: GestureDetector(
              onTap: () {
                //print('onTap');
                // 只需要调用 dispatch 即可
                //MyNotification('Haha!').dispatch(context);

                //Navigator.pop(context, 'HomePage 按钮返回!');


                getpost();
              },
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Text(data != null ? data.data : 'There is no data!'),
                ),
              ),
            )),
        //当点击返回时，会触发回调
        onWillPop: () async {
          print('onWillPop');
          Navigator.pop(context, 'HomePage 返回键返回!');
          // 返回 true 表示允许返回
          // 返回 false 表示不允许返回
          //return false;
        }
    );
  }
}


