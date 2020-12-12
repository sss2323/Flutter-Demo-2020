import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('设置可爱小文本···'),
        RaisedButton(
            child: Text('跳转到登录页面'),
            color: Theme.of(context).primaryColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            }),
        SizedBox(
          height: 40,
        ),
        RaisedButton(
            child: Text('跳转到注册页面'),
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
            onPressed: () {
              Navigator.pushNamed(context, '/registerFirst');
            })
      ],
    );
  }
}
