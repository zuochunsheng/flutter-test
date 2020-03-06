
import 'package:flutter/material.dart';
import 'package:flutter_app/bean/PageData.dart';
import 'package:flutter_app/chenBingCode/home_page.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SplashPage();
  }
}

class _SplashPage extends State<SplashPage> {
  final splashUrl =
      'https://www.baidu.com/img/bd_logo1.png';

  var text = 'Next';

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(0, 0.75),
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(splashUrl))),
        ),
        GestureDetector(
          // 设置点击事件
          onTap: () {
            jumpToHome(context);
          },
          child: Container(
              padding: EdgeInsets.only(left: 12, top: 6, right: 12, bottom: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                gradient: LinearGradient(
                  colors: <Color>[Colors.red, Colors.green, Colors.blue],
                ),
              ),
              child: Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
        ),
      ],
    );
  }

  void jumpToHome(BuildContext context) async {
    var data = PageData('Come form SplashPage!');
    // 使用 Navigator 跳转页面
    var result = await Navigator.push(
        context, MaterialPageRoute(
            builder: (context) => HomePage(
              data: data,
            )));
    if (result != null) {
      setState(() {
        text = result;
      });
    }
  }
}
