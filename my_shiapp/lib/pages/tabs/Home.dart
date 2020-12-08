import 'package:flutter/material.dart';
// import '../Search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('我是首页王子'),
          RaisedButton(
              child: Text('点我就转到搜索页面'),
              onPressed: () {
                //普通路由
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => SearchPage()));

                //命名路由:实现对路由统一管理
                Navigator.pushNamed(context, '/search');
              }),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
              child: Text('跳转到表单页面并传值'),
              onPressed: () {
                Navigator.pushNamed(context, '/form');
              })
        ],
      ),
    );
  }
}
