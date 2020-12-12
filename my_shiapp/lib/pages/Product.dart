import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  // ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '商品页面',
          ),
        ),
        body: Column(
          children: [
            Text('这是一个商品的页面'),
            RaisedButton(
              child: Text('点击我跳转到商品详情并传值喔～～～'),
              color: Theme.of(context).accentColor,
              onPressed: () {
                Navigator.pushNamed(context, '/productInfo',
                    arguments: {"pid": 456});
              },
              textTheme: ButtonTextTheme.primary,
            )
          ],
        ));
  }
}
