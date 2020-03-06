

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bean/Product.dart';

import 'ProductDetail.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: Text("列表"),
      ),
      body: new ListView.builder(
          itemCount: products.length,
          itemBuilder: (context,index){
            return new ListTile(
              title: Text(products[index].title + "，" + products[index].description),
              onTap: (){
                //跳转传参数
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetail(product:products[index])
                    ));
              },
            );
          })
    );
  }


}

