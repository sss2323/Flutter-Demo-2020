import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title;
  FormPage({this.title = "表单"}); //未传值时，默认值表单
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('表单1'),
            ),
            ListTile(
              title: Text('表单2'),
            ),
            ListTile(
              title: Text('表单1'),
            ),
            ListTile(
              title: Text('表单1'),
            ),
          ],
        ),
      ),
    );
  }
}
