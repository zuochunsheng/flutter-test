
import 'package:flutter/material.dart';
import 'package:flutter_app/anim/pageRoute_page.dart';
import 'package:flutter_app/bean/PageData.dart';
import 'package:flutter_app/chenBingCode/home_page.dart';
import 'package:flutter_app/chenBingCode/notification_page.dart';

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
    return
      NotificationListener(
        // 此处能够收到各种各样的事件
          onNotification: (notify) {
            switch (notify.runtimeType) {
              case ScrollStartNotification:
                print("ScrollStart");
                break;
              case ScrollUpdateNotification:
                print("ScrollUpdate");
                break;
              case ScrollEndNotification:
                print("ScrollEnd");
                break;
              case OverscrollNotification:
                print("Overscroll");
                break;
              case LayoutChangedNotification:
                print("LayoutChanged");
                break;
              case SizeChangedLayoutNotification:
                print("SizeChangedLayout");
                break;
              case UserScrollNotification:
                print("UserScroll");
                break;
              case KeepAliveNotification:
                print("KeepAlive");
                break;
              case MyNotification:
                print("CustomScroll");
                break;
            }
          },
          child:  Stack(
            alignment: Alignment(0, 0.75),
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(splashUrl)
                    )
                ),
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
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        inherit: false,
                        textBaseline: TextBaseline.alphabetic,
                        // 字体组名称
                        // fontFamily: 'Raleway',
                        // 根据 weight 选择具体的字体
                        fontWeight: FontWeight.w500,

                      ),
                    )),
              ),
//              Container(
//                margin: EdgeInsets.only(top: 40),
//                decoration: BoxDecoration(
//                  borderRadius: BorderRadius.all(Radius.circular(4)),
//                  color: Colors.amberAccent,
//
//                ),
//                //在使用第三方库资源的时候，需要加上包名。
//                child: Image.asset(
//                  // 图片路径
//                  'places/india_chennai_flower_market.png',
//                  // 包名
//                  package: 'flutter_gallery_assets',
//                ),
//              )
            ],
          )
      );

  }

  void jumpToHome(BuildContext context) async {


    var data = PageData('Come form SplashPage!');
    // 使用 Navigator 跳转页面
    var result = await Navigator.push(
        context, MaterialPageRoute(
            builder: (context) => HomePage(
              data: data,
            )
      )
    );

    //通常，在页面跳转的时候会使用 Flutter 提供的 MaterialPageRoute，
    // 它提供了默认的页面跳转动画。
    var result1 = await Navigator.push(
        context, PageRouteBuilder(pageBuilder:
        (BuildContext context, Animation animation,
        Animation secondaryAnimation) {
        return  ScaleTransition(
              scale: animation,
              alignment: Alignment.bottomRight,
              child: HomePage(data: data)
          );
        })
    );

    //builder 有问题
//    var result2 = await Navigator.push(
//        context, FadeRoute(
//          builder: (context) => {
//            HomePage(
//              data: data,
//            )
//          }
//      )
//    );

    if (result != null) {
      setState(() {
        text = result;
      });
    }
  }
}
