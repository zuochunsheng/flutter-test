
import 'package:flutter/material.dart';

class AnimPage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AnimPage2();
  }
}

class _AnimPage2 extends State<AnimPage2> with TickerProviderStateMixin{

  var w = 100.0;
  var h = 100.0;

  Animation<double> animation;

  Animation animation3;
  AnimationController animationController;


  @override
  void initState() {
    super.initState();
    //1 创建 AnimationController，用于控制动画 // 必须提供动画时间
    animationController = new AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 1500),
        //设置动画开始的最小值
        //lowerBound: 30,
        //设置动画结束的最大值
        //upperBound: 200
    );
    //2 创建一个插值器，关联 AnimationController，返回一个新的 Animation 对象
    animation = Tween<double>(
        begin: 100.0,
        end: 100.0*2.0
    ).animate(animationController);



    //2.2 创建 CurveAnimation
     animation3 = CurvedAnimation(
        parent: animationController,
        curve:
        Curves.bounceIn
        //Curves.decelerate
        //Curves.linear
       //_BounceInCurve
    );

    //3
    animationController.addListener((){
      // 当动画更新时会调用
      // 需要在这个函数中，调用 setState() 来触发视图刷新
      setState(() {
        print("animationController setState");
      });
    });
    //4 开始播放动画
    animationController.forward();

   // animationController.stop();
    //重置动画。
   // animationController.reset();
    //反向播放动画。必须处于正向动画播放完成的状态才有用。
    //animationController.reverse();

    //通过内部的 SpringSimulation 产生一系列值来驱动动画，其值的产生符合 胡克定律。
    //此时不需要再设置 duration，设置了也没用。
    //在创建列表滑动动画时，你可能会用到它。
    //这实际上就是一个 Physics-based animation。
    //animationController.fling();
    //循环播放动画。
    //animationController.repeat();

    //通过 Simulation 来产生值驱动动画。
    //animationController.animateWith();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Anim Demo 2'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SizedBox(
          // 获取插值器计算出的 value
          // 作为属性值
          width:  animation.value,
          height: animation.value,
          child: Container(
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // 动画使用完成后必需要销毁
    animationController.dispose();
  }
}
