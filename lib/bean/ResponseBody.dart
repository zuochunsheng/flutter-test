import 'dart:convert';

class Response{
  String reason;
  int error_code;
  Result result;

  // parseDataFunction data 数据类的解析函数
  static Response parse(String data, var parseDataFunction) {
    // 通过 dart:convert 提供的 jsonDecode() 函数将原始数据类转换为 Map<String, dynamic> map
    var map = jsonDecode(data);
    Response response = Response();
    response.reason = map['reason'];
    response.error_code = map['error_code'];
    response.result = Result.fromMap(map['result'], parseDataFunction);
    return response;
  }
}

class Result{
  String stat;
  // 真正需要的数据类
  var data;

  static Result fromMap(Map<String, dynamic> map, var parseDataFunction){
    Result result = Result();
    result.stat = map['stat'];
    result.data = parseDataFunction(map['data']);
    return result;
  }
}
