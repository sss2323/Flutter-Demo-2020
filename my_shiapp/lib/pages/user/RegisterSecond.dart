import 'package:flutter/material.dart';

class RegisterSecondPage extends StatelessWidget {
  const RegisterSecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第二步-验证码'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text('请输入验证码完成注册！！'),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
                child: Text('下一步'),
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                onPressed: () {
                  //返回到根路由【替换路由】
                  // Navigator.of(context).pushReplacementNamed('/registerThird');

                  Navigator.pushNamed(context, '/registerThird');
                })
          ],
        ),
      ),
    );
  }
}
