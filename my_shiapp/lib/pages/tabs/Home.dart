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
        child: Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text('我是首页王子'),
          RaisedButton(
              child: Text('点我就转到搜索页面'),
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                //普通路由
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => SearchPage()));

                //命名路由:实现对路由统一管理
                Navigator.pushNamed(context, '/search', arguments: {"id": 123});
              }),
          SizedBox(
            height: 20,
          ),
          RaisedButton(
              child: Text('跳转到表单页'),
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                Navigator.pushNamed(context, '/form');
              }),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
              child: Text('跳转到商品页面'),
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
              onPressed: () {
                Navigator.pushNamed(context, '/product');
              })
        ],
      ),
    ));
  }
}
