

import 'package:flutter/material.dart';


class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ParentWidget();
  }
}

class _ParentWidget extends State<ParentWidget> {
  bool _active = false;

  void _handleTapBoxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapBox(
        active: _active,
        // 传入函数
        onChanged: _handleTapBoxChanged,
      ),
    );
  }
}

//-----------


class TapBox extends StatefulWidget {

  final bool active;
  // 定义一个函数，外界传入后可被调用
  final ValueChanged<bool> onChanged;
  //
  TapBox({Key key, this.active, this.onChanged}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TabBox();
  }
}

class _TabBox extends State<TapBox> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    // 通过 widget 可以获得其成员变量
    widget.onChanged(!widget.active);
  }

  Widget build(BuildContext context) {
    // 把你的 Widget 使用 GestureDetector 包裹📦起来
    return GestureDetector(
      // 处理按下手势
      onTapDown: _handleTapDown,
      // 处理抬起手势
      onTapUp: _handleTapUp,
      // 处理点击手势
      onTap: _handleTap,
      // 处理取消手势
      onTapCancel: _handleTapCancel,
      child: Container(
        child: Center(
          child: Text(widget.active ? 'Active' : 'Inactive',
              style: TextStyle(fontSize: 32.0, color: Colors.white)),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
              ? Border.all(
                color: Colors.teal[700],
                width: 10.0,
              )
              : null,
        ),
      ),
    );
  }
}
