

import 'package:flutter/material.dart';
import 'package:flutter_app/anim/CustomCurve.dart';


class ScaleAnimationRoute extends StatefulWidget {
  @override
  _ScaleAnimationRouteState createState() => _ScaleAnimationRouteState();
}

class _ScaleAnimationRouteState extends State<ScaleAnimationRoute> with SingleTickerProviderStateMixin {

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    // 1 创建 AnimationController
    controller = AnimationController(
        duration: const Duration(seconds: 3),
        vsync: this
    );
    // 2 创建 Animation
    animation = Tween(begin: 100.0, end: 300.0).animate(controller);
    // 不需要再在 `addListener()` 添加的回调中调用 `setState()`
    // 启动动画
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    // 把刚刚创建的 animation 传入
    return AnimatedImage(animation: animation,);
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }
}

