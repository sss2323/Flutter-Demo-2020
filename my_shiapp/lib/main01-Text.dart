import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
//自定义组件

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter demo'),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.pink), //theme 设置主题颜色
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Text(
      '依依在学习！真棒～~',
      textDirection: TextDirection.ltr,
      style: TextStyle(
        fontSize: 30.0,
        color: Colors.pink,
        // color: Color.fromRGBO(r, g, b, opacity)
      ),
    ));
  }
}
