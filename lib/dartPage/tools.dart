
import 'dart:async' show Futter;
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;


//使用rootBundle来加载config.json配置文件
//加载配置文件需要使用异步处理，因为文件的读写操作需要时间，并且不可预知
Future<String> loadAsset() async {
  return await rootBundle.loadString("assets/config.json");

}

