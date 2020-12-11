import 'package:flutter/material.dart';
// import 'package:my_shiapp/pages/Form.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            child: Text('跳转到表单页面并传值'),
            color: Theme.of(context).accentColor,
            onPressed: () {
              //基本路由跳转传值
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //   return FormPage(
              //     title: '我是跳转传值',
              //   );
              // }));

              //命名路由
              Navigator.pushNamed(context, '/form');
            },
            textTheme: ButtonTextTheme.primary,
          ),
        ],
      ),
    );
  }
}
