import 'package:flutter/material.dart';
import 'package:my_shiapp/res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(' 粉色小星球')),
        body: LayoutDemo(),
      ),
      theme: ThemeData(primaryColor: Colors.redAccent),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,
      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        direction: Axis.vertical,
        // alignment: WrapAlignment.spaceAround,
        // runAlignment: WrapAlignment.start,
        children: [
          MyButton('初见0000'),
          MyButton('初见2223333'),
          MyButton('初见ooo'),
          MyButton('初见'),
          MyButton('初见'),
          MyButton('初见'),
          MyButton('初见666')
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  const MyButton(this.text, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
