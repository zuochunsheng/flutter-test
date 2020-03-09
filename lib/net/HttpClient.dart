
import 'dart:convert';
import 'dart:io';

Future<void> getpost() async {

  print('网络请求');
  //var mBaseUrl = "https://api.github.com/"  ;

  HttpClient httpClient = HttpClient();

  var uri = new Uri.http('v.juhe.cn', '/toutiao/index',
      {'key': '******', 'type': 'keji'});

  var request = await httpClient.getUrl(uri);
  var response = await request.close();

  print("statusCode:"+ response.statusCode.toString());
  // 判断 response 状态 =>
  if (response.statusCode == HttpStatus.ok) {
    // 转换 response，获取结果
    var responseBody = await response.transform(utf8.decoder).join();
    print(responseBody);
  }

  httpClient.close();


}
