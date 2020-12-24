import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// import '../Search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _news = '';
  List _list = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getData();
    // Map userInfo = {"username": "小芳", "age": 20};
    // var a = json.encode(userInfo); //把map 类型数据转换为json字符串
    // print(userInfo is Map);
    // print(a is String);

    // String userinfo = '{"username": "小芳", "age": 20}';

    // Map u = json.decode(userinfo);

    // print(u["username"]);
  }

//请求数据
  _getData() async {
    var apiUrl = "http://a.itying.com/api/productlist";
    var result = await http.get(apiUrl);
    if (result.statusCode == 200) {
      print(json.decode(result.body));
      setState(() {
        this._list = json.decode(result.body)["result"];
      });
    } else {
      print("失败${result.statusCode}");
    }
  }

//提交数据
  _postData() async {
    // var apiUrl = "http://a.itying.com/api/productlist";
    // var result = await http.post(apiUrl, body: {'username': '圆圆', 'age': 10});
    // if (result.statusCode == 200) {
    //   print(json.decode(result.body));
    //   this._news = json.decode(result.body);
    // } else {
    //   print(result.statusCode);
    // }
  }

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
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                      child: Text('Get请求数据'),
                      color: Theme.of(context).accentColor,
                      textTheme: ButtonTextTheme.primary,
                      onPressed: _getData),
                  Column(
                    children: [
                      this._list.length > 0
                          ? ListView.builder(
                              itemCount: this._list.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text("${this._list[index]["title"]}"),
                                );
                              },
                              shrinkWrap:
                                  true, //Vertical viewport was given unbounded height.
                            )
                          : Text('加载中。。。。。')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                      child: Text('post请求数据'),
                      color: Theme.of(context).accentColor,
                      textTheme: ButtonTextTheme.primary,
                      onPressed: _postData),
                ],
              ),
            ),
          ),
        ));
  }
}
