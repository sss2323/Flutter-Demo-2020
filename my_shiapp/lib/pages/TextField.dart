import 'dart:ui';

import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  TextFieldDemoPage({Key key}) : super(key: key);

  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  var _username = new TextEditingController(); //初始化时给表单赋值
  var _password;
  var flag = true;
  var sex = 1;
  @override
  void initState() {
    super.initState();
    _username.text = '初始值';
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单页面'),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "请输入用户名",
                ),
                controller: _username,
                onChanged: (value) {
                  setState(() {
                    //改变值
                    _username.text = value;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "密码",
                ),
                onChanged: (value) {
                  setState(() {
                    //改变值
                    _password = value;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Checkbox(
                      value: this.flag,
                      activeColor: Colors.red,
                      onChanged: (v) {
                        setState(() {
                          this.flag = v;
                        });
                      }),
                  Text(this.flag ? '选中' : '未选中')
                ],
              ),
              // SizedBox(
              //   height: 10,
              // ),
              // CheckboxListTile(
              //     value: this.flag,
              //     title: Text('标题'),
              //     subtitle: Text('这是二级标题'),
              //     onChanged: (v) {
              //       setState(() {
              //         this.flag = v;
              //       });
              //     }),
              Divider(),
              CheckboxListTile(
                  value: this.flag,
                  title: Text('标题1'),
                  secondary: Icon(Icons.help),
                  subtitle: Text('这是二级标题'),
                  onChanged: (v) {
                    setState(() {
                      this.flag = v;
                    });
                  }),
              Divider(),
              CheckboxListTile(
                  value: this.flag,
                  title: Text('标题2'),
                  subtitle: Text('这是二级标题'),
                  onChanged: (v) {
                    setState(() {
                      this.flag = v;
                    });
                  }),
              Divider(),
              // Row(children: [
              //   //     Text('女'),
              //   //     Radio(
              //   //         value: 1,
              //   //         groupValue: this.sex,
              //   //         onChanged: (v) {
              //   //           setState(() {
              //   //             this.sex = v;
              //   //           });
              //   //         }),
              //   //     Text('男'),
              //   //     Radio(
              //   //         value: 2,
              //   //         groupValue: this.sex,
              //   //         onChanged: (v) {
              //   //           setState(() {
              //   //             this.sex = v;
              //   //           });
              //   //         }),
              //   //     Text("${this.sex}"),
              //   //     Text(this.sex == 1 ? "女" : "男"),
              //   //   ],
              //   // ),

              // ]),

              RadioListTile(
                value: 1,
                groupValue: this.sex,
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                  });
                },
                title: Text("标题0"),
                subtitle: Text("这是二级标题"),
                secondary: Icon(Icons.help),
                selected: this.sex == 1,
              ),
              RadioListTile(
                value: 2,
                groupValue: this.sex,
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                  });
                },
                title: Text("标题000"),
                subtitle: Text("这是二级标题"),
                secondary: Icon(Icons.help),
                selected: this.sex == 2,
              ),
              RadioListTile(
                value: 3,
                groupValue: this.sex,
                onChanged: (v) {
                  setState(() {
                    this.sex = v;
                  });
                },
                title: Text("标题11"),
                subtitle: Text("这是二级标题"),
                secondary: Image.network(
                    'https://www.itying.com/images/flutter/5.png'),
                selected: this.sex == 3,
              ),
              Switch(
                  value: this.flag,
                  onChanged: (v) {
                    setState(() {
                      print(v);
                      this.flag = v;
                    });
                  }),
              Container(
                width: double.infinity,
                height: 40,
                child: RaisedButton(
                  child: Text('登录'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    print(this._username.text);
                    print(this._password);
                  },
                ),
              )
            ],
          )),
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(),
        SizedBox(
          height: 20,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "请输入搜索的内容", border: OutlineInputBorder()),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          maxLines: 4,
          decoration:
              InputDecoration(hintText: "多行文本", border: OutlineInputBorder()),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          obscureText: true,
          decoration:
              InputDecoration(hintText: "密码", border: OutlineInputBorder()),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          decoration:
              InputDecoration(border: OutlineInputBorder(), labelText: "用户名"),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          obscureText: true,
          decoration:
              InputDecoration(border: OutlineInputBorder(), labelText: "密码"),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          decoration: InputDecoration(
              icon: Icon(Icons.people),
              hintText: "请输入搜索的用户名",
              border: OutlineInputBorder()),
        )
      ],
    );
  }
}

//修改表单，以及获取表单里的内容
