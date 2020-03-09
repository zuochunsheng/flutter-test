
import 'package:flutter/material.dart';

// stete 声命周期
class FavoriteStatefulWidget extends StatefulWidget {

  // 必须重写 createState()，返回一个 State，它包含了视图和交互逻辑
  @override
  State<StatefulWidget> createState() => _FavoriteStatefulWidgetState();
}

class _FavoriteStatefulWidgetState extends State<FavoriteStatefulWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 1;

  void _toggleFavorite() {
    // 通过 setState() 更新数据
    // 组件树就会自动刷新了
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  //通常，我们可以重写这个函数，进行初始化操作。
  @override
  void initState() {
    print("initState");
    super.initState();
  }

  //在 initState() 调用结束后，这个函数会被调用。
  //事实上，当 State 对象的依赖关系发生变化时，这个函数总会被 Framework 调用。
  @override
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }


  // 重写 build() 函数，构建视图树
  @override
  Widget build(BuildContext context) => Row(

    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        padding: EdgeInsets.all(0),
        child: IconButton(
          icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
          color: Colors.red[500],
          onPressed: _toggleFavorite,
        ),
      ),
      SizedBox(
        width: 18,
        child: Container(
          child: Text('$_favoriteCount'),
        ),
      ),
    ],
  );

  //当 State 被暂时从视图树中移除时，会调用这个函数。
  //页面切换时，也会调用它，因为此时 State 在视图树中的位置发生了变化，需要先暂时移除后添加。
  @override
  void deactivate() {
    print("deactivate");
    super.deactivate();
  }


  //当 State 被永久的从视图树中移除，Framework 会调用该函数。
  //在销毁前触发，我们可以在这里进行最终的资源释放。
  //在调用这个函数之前，总会先调用 deactivate()。
  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }



  //当 widget 的配置发生变化时，会调用这个函数。
  // 比如，Hot-reload 的时候就会调用这个函数。
  //这个函数调用后，会调用 build()。
  @override
  void didUpdateWidget(FavoriteStatefulWidget oldWidget) {
    print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  //当我需要更新 State 的视图时，需要手动调用这个函数，它会触发 build() 。
  @override
  void setState(fn) {
    print("setState");
    super.setState(fn);
  }


}

