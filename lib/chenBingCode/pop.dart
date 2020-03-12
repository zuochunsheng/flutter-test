
import 'package:flutter/material.dart';

class MessageForm extends StatefulWidget {

  @override
  _MessageFormState createState() {
    return _MessageFormState();
  }

}

class _MessageFormState extends State<MessageForm> {
  var editController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:   Colors.white24
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: editController,
            ),
          ),
          RaisedButton(
              child: Text("click"),
              onPressed: () {
               // showAbcDialog(context,editController.text);
                //showAbcSimDialog(context,editController.text);
                showAlertDialog("dialog",editController.text);
              }
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    editController.dispose();
  }

  void showAbcSimDialog(context,text) {
    showDialog(
        context: context,
        builder: (ctx) {
          return SimpleDialog(
            title: Text(text),
            titlePadding: EdgeInsets.all(10),
            backgroundColor: Colors.amber,
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(6))),
            children: <Widget>[
              ListTile(
                title: Center(child: Text("Item_1"),),
              ),
              ListTile(
                title: Center(child: Text("Item_2"),),
              ),
              ListTile(
                title: Center(child: Text("Item_3"),),
              ),
              ListTile(
                title: Center(child: Text("Close"),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  void  showAlertDialog (title ,content){
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(title),
          content: Text((content)),
          actions: <Widget>[
            new FlatButton(
              child: new Text("取消"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text("确定"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ));

  }


  void showAbcDialog(context,text) {
     showDialog(
        // 第一个 context 是参数名，第二个 context 是 State 的成员变量
        context: context,
        builder: (_) {
           return alertDialog(text);
        }
      );
  }


  Widget alertDialog(text) {
    return AlertDialog(
      // dialog 的内容
      content: Text(text),
      // actions 设置 dialog 的按钮
      actions: <Widget>[
      FlatButton(
      child: Text('OK'),
      // 用户点击按钮后，关闭弹框
      onPressed: () => Navigator.pop(context),
      )
      ],
     );
  }

}

