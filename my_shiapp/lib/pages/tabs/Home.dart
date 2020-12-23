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
        height: 1700,
        child: Scrollbar(
          child: SingleChildScrollView(
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
                        Navigator.pushNamed(context, '/search',
                            arguments: {"id": 123});
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
                    height: 20,
                  ),
                  RaisedButton(
                      child: Text('跳转到商品页面'),
                      color: Theme.of(context).accentColor,
                      textTheme: ButtonTextTheme.primary,
                      onPressed: () {
                        Navigator.pushNamed(context, '/product');
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                          child: Text('跳转到appbar'),
                          color: Theme.of(context).primaryColor,
                          textTheme: ButtonTextTheme.primary,
                          onPressed: () {
                            //路由跳转
                            Navigator.pushNamed(context, '/appBarDemo');
                          })
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                      child: Text('TabController定义顶部tab 切换'),
                      color: Theme.of(context).accentColor,
                      textTheme: ButtonTextTheme.primary,
                      onPressed: () {
                        Navigator.pushNamed(context, '/tabBarController');
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                      child: Text('button演示'),
                      color: Theme.of(context).accentColor,
                      textTheme: ButtonTextTheme.primary,
                      onPressed: () {
                        Navigator.pushNamed(context, '/buttonPage');
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                      child: Text('表单示例'),
                      color: Theme.of(context).accentColor,
                      textTheme: ButtonTextTheme.primary,
                      onPressed: () {
                        Navigator.pushNamed(context, '/textField');
                      }),
                  RaisedButton(
                      child: Text('学生登记'),
                      color: Theme.of(context).accentColor,
                      textTheme: ButtonTextTheme.primary,
                      onPressed: () {
                        Navigator.pushNamed(context, '/formDemo');
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                      child: Text('日期组件'),
                      color: Theme.of(context).accentColor,
                      textTheme: ButtonTextTheme.primary,
                      onPressed: () {
                        Navigator.pushNamed(context, '/datePicker');
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                      child: Text('日期三方插件'),
                      color: Theme.of(context).accentColor,
                      textTheme: ButtonTextTheme.primary,
                      onPressed: () {
                        Navigator.pushNamed(context, '/datePickerPub');
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                      child: Text('轮播图swiper'),
                      color: Theme.of(context).accentColor,
                      textTheme: ButtonTextTheme.primary,
                      onPressed: () {
                        Navigator.pushNamed(context, '/swiperDemo');
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                      child: Text('dialog'),
                      color: Theme.of(context).accentColor,
                      textTheme: ButtonTextTheme.primary,
                      onPressed: () {
                        Navigator.pushNamed(context, '/dialog');
                      }),
                ],
              ),
            ),
          ),
        ));
  }
}
