import 'package:flutter/material.dart';
import 'package:flutter_app/bean/PageData.dart';
import 'package:flutter_app/chenBingCode/DetailScreen.dart';
import 'package:flutter_app/chenBingCode/baseWidgets.dart';
import 'package:flutter_app/chenBingCode/home_page.dart';

class SplashPage extends StatelessWidget {
  var data = PageData('Come form SplashPage!');

  final splashUrl =
      'https://raw.githubusercontent.com/chenBingX/img/master/其它/u=343452579,826911251&fm=26&gp=0.jpg';

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0, 0.75), // x, y
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
               image: NetworkImage(splashUrl),
          )),
        ),
        GestureDetector(
          // 设置点击事件
          onTap: () {
            // 使用 Navigator 跳转页面
            Navigator.push(context, MaterialPageRoute(
                builder: (context) {
              return HomePage(data: data,);
              //MyStatefulWidget();
            })).then((result){
              print("result:" + result);
            });

            //Navigator.pushNamed(context, "/first");
            //Navigator.pushNamed(context, "/home");
            //Navigator.pushNamed(context, "/productList");
          },
          child: Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                gradient: LinearGradient(
                  colors: <Color>[Colors.red, Colors.green, Colors.blue],
                ),
              ),
              child: Center(
                  child: Text(
                "Next",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ))),
        ),
      ],
    );
  }





}
