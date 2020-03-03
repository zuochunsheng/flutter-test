

//通过 with 关键来使用 Mixin 类扩展一个类。
//在 Dart 中，一个类支持扩展无限个 Mixin，它们使用 , 来分隔彼此。

import 'Musical.dart';
import 'Person.dart';

class Maestro extends Person with Musical {

  Maestro(String maestroName) : super(null) {
    //name = maestroName;
    canConduct = true;
  }
}

