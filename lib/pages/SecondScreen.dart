

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text("导航亚麻"),
      ),
      body: new Center(
        child: new RaisedButton(
            onPressed: (){
                Navigator.pop(context);
          },
          child: Text("返回页面"),

          ),
      ),
    );
  }


}