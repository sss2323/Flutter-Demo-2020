import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            title: Text('设置可爱小文本···'),
          ),
          ListTile(
            title: Text('我是可爱小文本···'),
          ),
          ListTile(
            title: Text('我是可爱小文本···'),
          ),
          ListTile(
            title: Text('我是可爱小文本···'),
          )
        ],
      ),
    );
  }
}
