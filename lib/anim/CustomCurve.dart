


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
