import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  var username;
  int sex = 1;
  var info;

  List hobby = [
    {"checked": true, "title": '阅读'},
    {"checked": false, "title": '写代码'},
    {"checked": false, "title": '美食'},
    {"checked": true, "title": '冒险'}
  ];

  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < this.hobby.length; i++) {
      tempList.add(
        Row(
          children: [
            Text(this.hobby[i]["title"] + ":"),
            Checkbox(
                value: this.hobby[i]["checked"],
                onChanged: (value) {
                  setState(() {
                    this.hobby[i]["checked"] = value;
                  });
                })
          ],
        ),
      );
    }
    return tempList;
  }

  void _setChanged(value) {
    setState(() {
      this.sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学员信息登记系统'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: "输入用户信息"),
              onChanged: (value) {
                setState(() {
                  this.username = value;
                });
              },
            ),
            Row(
              children: [
                Text("女"),
                Radio(value: 1, groupValue: this.sex, onChanged: _setChanged),
                Text("男"),
                Radio(value: 2, groupValue: this.sex, onChanged: _setChanged),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            //爱好
            Column(children: this._getHobby()),
            SizedBox(
              height: 30,
            ),
            TextField(
              maxLength: 30,
              decoration: InputDecoration(
                  hintText: "描述信息", border: OutlineInputBorder()),
              onChanged: (value) {
                setState(() {
                  this.info = value;
                });
              },
            ),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text('提交信息'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print(this.username);
                  print(this.sex);
                  print(this.hobby);
                  print(this.info);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
