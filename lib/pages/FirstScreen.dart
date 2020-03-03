

import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text(" 导航页面"),
      ),
      body: new Center(
        child: RaisedButton(
          child: Text('查看商品详情页面'),
            onPressed: (){
               Navigator.push(context,
                   MaterialPageRoute(builder: (context) =>SecondScreen())
              );
            }
        ),
      ),

    );
  }

}