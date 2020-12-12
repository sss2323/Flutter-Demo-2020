import 'package:flutter/material.dart';

class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第一步-注册输入手机号'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text('注册的第一步，请输入手机号,点击下一步'),
            RaisedButton(
                child: Text('下一步'),
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                onPressed: () {
                  Navigator.pushNamed(context, '/registerSecond');

                  //替换路由
                  // Navigator.of(context).pushReplacementNamed('/registerSecond');
                })
          ],
        ),
      ),
    );
  }
}
