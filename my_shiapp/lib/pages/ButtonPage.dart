import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示页面'),
        actions: [
          IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //有颜色按钮
              RaisedButton(
                  child: Text('普通按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {}),

              SizedBox(
                width: 10,
              ),

              //有阴影效果
              RaisedButton(
                  elevation: 10,
                  child: Text('有阴影按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {}),
              SizedBox(
                width: 5,
              ),
              RaisedButton.icon(
                  icon: Icon(Icons.score),
                  elevation: 10,
                  label: Text('图标按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: null),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 300,
                child: RaisedButton(
                    elevation: 10,
                    child: Text('设置宽度和高度'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {}),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                height: 40,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        //圆角按钮
                        borderRadius: BorderRadius.circular(10)),
                    child: Text('自适应按钮'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {}),
              ))
            ],
          ),
          Container(
            height: 80,
            child: RaisedButton(
                elevation: 10,
                splashColor: Colors.grey, //长按时的水波纹
                shape: CircleBorder(side: BorderSide(color: Colors.white)),
                child: Text('圆形按钮'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {}),
          ),
          FlatButton(
            onPressed: () {},
            child: Text('扁平按钮'),
            color: Colors.blue,
            textColor: Colors.yellow,
          ),
          SizedBox(
            width: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                margin: EdgeInsets.all(10),
                height: 60,
                child: Expanded(
                  child: OutlineButton(
                    onPressed: () {},
                    child: Text('带边框的按钮'),
                    color: Colors.black, //没有效果
                  ),
                ),
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonBar(
                children: [
                  RaisedButton(
                      elevation: 10,
                      child: Text('登录'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {}),
                  RaisedButton(
                      elevation: 10,
                      child: Text('注册'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {}),
                  MyButton(
                    text: "自定义按钮",
                    height: 60.0,
                    width: 110.0,
                    pressed: () {
                      print('自定义');
                    },
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

//自定义按钮组件

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final double height;
  final double width;
  const MyButton(
      {this.text = '',
      this.pressed = null,
      this.width = 80.0,
      this.height = 30.0});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: this.height,
        width: this.width,
        child: RaisedButton(
          child: Text(this.text),
          onPressed: this.pressed,
        ));
  }
}
