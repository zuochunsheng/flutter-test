import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  //全局Key 用来获取Form 表单组件
  GlobalKey<FormState> loginKey = new GlobalKey<FormState>();
  String userName;
  String password;

  void login() {
    //读取当前的 Form 状态
    var currentState = loginKey.currentState;
    if (currentState.validate()) {
      currentState.save();
      print("userName:" + userName + ",password:" + password);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget body = new Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16),
          child: Form(
            key: loginKey,
            onChanged: (){},
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: "请输入用户名"),
                  onSaved: (value) {
                    userName = value;
                  },
                  onFieldSubmitted: (value) {},
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "请输入密码"),
                  obscureText: true,
                  //表单验证器
                  validator: (value) {
                    return value.length < 6 ? "密码长度不够6位" : null;
                  },
                  onSaved: (value) {
                    password = value;
                  },
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 340,
          height: 42,
          child: RaisedButton(
            onPressed: login,
            child: Text(
              "登录",
              style: TextStyle(fontSize: 18),
            ),
          ),
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(title: Text("Form 表单示例")),
      body: body,
    );
  }
}