


import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';


//2.1 自定义 Curve
//很简单，关键就是重写 transform() 函数，在其中计算返回中间值。
//⚠️ 注意，transform() 中接收到的 t 的取值范围是 0 ~ 1。
class _BounceInCurve extends Curve {
  const _BounceInCurve._();

  @override
  double transform(double t) {
    assert(t >= 0.0 && t <= 1.0);
    return 1.0 - _bounce(1.0 - t);
  }

  num _bounce(double d) {
    return d;
  }
}


// AnimatedWidget
class AnimatedImage extends AnimatedWidget {
  AnimatedImage({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Center(
        child: SizedBox(
          // 获取 Animation 中的值
          width: animation.value,
          height: animation.value,
          child: Container(
            color: Colors.lightBlue,
          ),
        )
    );
  }
}


//实现方式很简单，就是使用 Hero 包裹两个页面间的共享元素。
//其中关键就是共享元素的 tag 必须相同。
//剩余的处理 Flutter 已经帮开发者完成了。
var hero = Hero(
  // tag 是关键
  tag: "photo.tag",
  child: ClipRect(
    child: Image.asset(
      "photo.assetName",
      package: "photo.assetPackage",
      fit: BoxFit.cover,
    ),
  ),
);

