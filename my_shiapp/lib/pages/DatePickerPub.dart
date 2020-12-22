import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class DatePickerPubDemo extends StatefulWidget {
  DatePickerPubDemo({Key key}) : super(key: key);

  @override
  _DatePickerPubDemoState createState() => _DatePickerPubDemoState();
}

class _DatePickerPubDemoState extends State<DatePickerPubDemo> {
  DateTime _dateTime = DateTime.now();
  void _showDatePicker() {
    DatePicker.showDatePicker(context,
        onMonthChangeStartWithFirstDate: true,
        pickerTheme: DateTimePickerTheme(
            showTitle: true,
            confirm: Text('确定', style: TextStyle(color: Colors.red)),
            cancel: Text('取消', style: TextStyle(color: Colors.cyan))),
        minDateTime: DateTime.parse('1980-08-09'),
        maxDateTime: DateTime.parse('2100-08-08'),
        initialDateTime: _dateTime,
        // dateFormat: 'yyyy-MMMM-dd',

        dateFormat: 'yyyy年M月d日  EEE,H时:m分', //show timepicker
        pickerMode: DateTimePickerMode.datetime, //show timepicker
        locale: DateTimePickerLocale.zh_cn,
        onClose: () => print("----- onClose -----"),
        onCancel: () => print('onCancel'),
        // onChange: (dateTime, List<int> index) {
        //   setState(() {
        //     _dateTime = dateTime;
        //   });
        // },
        onConfirm: (dateTime, List<int> index) {
          setState(() {
            _dateTime = dateTime;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("datePickerPub"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${formatDate(
                      _dateTime,
                      [
                        yyyy,
                        '年',
                        'mm',
                        '月',
                        dd,
                        '    ',
                        HH,
                        ':',
                        nn,
                      ],
                    )}"),
                    Icon(Icons.arrow_downward)
                  ],
                ),
                onTap: _showDatePicker,
              )
            ],
          )
        ],
      ),
    );
  }
}
