import 'package:flutter/material.dart';
// import 'package:date_format/date_format.dart';
// import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

import 'package:flutter/src/material/time_picker.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo({Key key}) : super(key: key);

  @override
  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime _nowDate = DateTime.now(); //获取当前日期
  var _nowTime = TimeOfDay(hour: 12, minute: 30);
  _showDatePicker() async {
    // showDatePicker(
    //         context: context,
    //         initialDate: _nowDate,
    //         firstDate: DateTime(1980),
    //         lastDate: DateTime(2100))
    //     .then((result) => print(result));

    var result = await showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
    );

    print(result);

    setState(() {
      this._nowDate = result;
    });
  }

  _showTimePicker() async {
    // showDatePicker(
    //         context: context,
    //         initialDate: _nowDate,
    //         firstDate: DateTime(1980),
    //         lastDate: DateTime(2100))
    //     .then((result) => print(result));

    var result2 = await showTimePicker(
      context: context,
      initialTime: _nowTime,
    );

    print(result2);

    setState(() {
      this._nowTime = result2;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print(now); //flutter: 2020-12-19 11:59:04.120821
    // print(now.millisecondsSinceEpoch); //1608350396224 时间戳
    // print(DateTime.fromMicrosecondsSinceEpoch(
    // 1608350390024)); //flutter: 1970-01-19 22:45:50.390024

    // print(formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("datePicker"),
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
                  children: [Text("${_nowDate}"), Icon(Icons.arrow_drop_down)],
                ),
                onTap: _showDatePicker,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${_nowTime.format(context)}"),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showTimePicker,
              )
            ],
          )
        ],
      ),
    );
  }
}
