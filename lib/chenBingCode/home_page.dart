
import 'package:flutter/material.dart';
import 'package:flutter_app/bean/PageData.dart';

class HomePage extends StatelessWidget {
  final PageData data;

  // 带所需参数的构造函数
  const HomePage({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: GestureDetector(
              onTap: () {
                Navigator.pop(context, 'HomePage popped!');
              },
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Text(data != null ? data.data : 'There is no data!'),
                ),
              ),
            ));
  }
}
