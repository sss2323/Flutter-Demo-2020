import 'package:flutter/material.dart';

class DatePickerPubDemo extends StatefulWidget {
  DatePickerPubDemo({Key key}) : super(key: key);

  @override
  _DatePickerPubDemoState createState() => _DatePickerPubDemoState();
}

class _DatePickerPubDemoState extends State<DatePickerPubDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("datePickerPub"),
      ),
      body: Text("日期选择2"),
    );
  }
}
