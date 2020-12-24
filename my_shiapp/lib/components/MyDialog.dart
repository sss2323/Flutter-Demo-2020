import 'dart:async';

import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  String title, content;

  MyDialog({this.title = "", this.content = ""}); //命名可选参数

  //计时器
  _showTimer(context) {
    var timer;
    timer = Timer.periodic(Duration(milliseconds: 1500), (t) {
      print('关闭');
      Navigator.pop(context);
      t.cancel(); //取消定时器  timer.cancel()
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
          child: Container(
        width: 200,
        height: 200,
        color: Colors.white,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text('${title}'),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                )),
            Divider(),
            Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              child: Text("${content}"),
            )
          ],
        ),
      )),
    );
  }
}
