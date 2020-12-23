import 'package:flutter/material.dart';
// import 'package:dialog/dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogDomePage extends StatefulWidget {
  DialogDomePage({Key key}) : super(key: key);

  @override
  _DialogDomePageState createState() => _DialogDomePageState();
}

class _DialogDomePageState extends State<DialogDomePage> {
  _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示信息"),
            content: Text('你确定要删除吗？'),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, 'cancle');
                  },
                  child: Text('取消')),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context, 'ok');
                  },
                  child: Text('确定'))
            ],
          );
        });
    print(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('选择内容'),
            children: [
              SimpleDialogOption(
                child: Text('option A'),
                onPressed: () {
                  print('option a');
                  Navigator.pop(context, 'a');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('option B'),
                onPressed: () {
                  print('option B');
                  Navigator.pop(context, 'b');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('option C'),
                onPressed: () {
                  print('option C');
                  Navigator.pop(context, 'c');
                },
              )
            ],
          );
        });
    print(result);
  }

  _modelBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            child: Column(
              children: [
                ListTile(
                  title: Text('分享a'),
                  onTap: () {
                    Navigator.pop(context, '分享a');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享b'),
                  onTap: () {
                    Navigator.pop(context, '分享b');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享c'),
                  onTap: () {
                    Navigator.pop(context, '分享c');
                  },
                )
              ],
            ),
          );
        });
    print(result);
  }

  _toast() {
    Fluttertoast.showToast(
        msg: "提示信息",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('dialog组件')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: _alertDialog,
                child: Text('alert弹出框--alertDialog'),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: _simpleDialog,
                child: Text('select 弹出框--simpleDialog'),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: _modelBottomSheet,
                child: Text('actionsheet底部 弹出框--showmodalbottomsheet'),
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                onPressed: _toast,
                child: Text('toast --fluttertoast第三方库'),
              )
            ],
          ),
        ));
  }
}
