
import 'package:flutter/material.dart';
import 'package:flutter_app/chenBingCode/DecorationWidgets.dart';

var  notificationListener = NotificationListener(
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
    child: MyWidget(Colors.green)
);



class MyNotification extends Notification {
  MyNotification(this.msg);
  final String msg;
}
