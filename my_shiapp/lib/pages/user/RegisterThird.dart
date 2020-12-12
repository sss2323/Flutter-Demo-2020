import 'package:flutter/material.dart';
import '../Tabs.dart';

class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第三步-完成注册'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text('输入密码完成注册！！'),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
                child: Text('确定'),
                color: Theme.of(context).primaryColor,
                textTheme: ButtonTextTheme.primary,
                onPressed: () {
                  //直接返回到根路由【替换路由】
                  // Navigator.of(context).pop();

                  //其他用法 【返回指定的根
                  Navigator.of(context).pushAndRemoveUntil(
                      new MaterialPageRoute(
                          builder: (context) => new Tabs(
                                index: 2, //索引  1返回到分类页面，2返回到设置页面，默认是首页 0
                              )),
                      (route) => route == null); //把所有路由都置为空，然后再返回指定的路由
                })
          ],
        ),
      ),
    );
  }
}
