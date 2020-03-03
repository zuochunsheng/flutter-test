

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bean/Product.dart';

class ProductDetail extends StatelessWidget{
  final Product product;

  ProductDetail({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: Text("${product.title}"),
      ),
      body: new Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(product.description),
      ),

    );
  }

}