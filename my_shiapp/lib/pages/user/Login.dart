import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text('这是一个登录页面，点击登录会执行登录操作。'),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
                child: Text('立即登录'),
                color: Theme.of(context).primaryColor,
                textTheme: ButtonTextTheme.primary,
                onPressed: () {
                  Navigator.of(context).pop(); //返回到上一个页面；
                })
          ],
        ),
      ),
    );
  }
}
