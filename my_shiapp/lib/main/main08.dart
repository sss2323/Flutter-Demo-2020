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
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 200,
                color: Colors.black,
                child: Text('欢迎来到粉色星球！'),
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  height: 180,
                  child: Image.network(
                      'https://www.itying.com/images/flutter/5.png',
                      fit: BoxFit.cover),
                )),
            SizedBox(width: 10),
            Expanded(
                flex: 1,
                child: Container(
                    height: 180,
                    child: ListView(
                      children: [
                        Container(
                          height: 85,
                          child: Image.network(
                              'https://www.itying.com/images/flutter/1.png',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 85,
                          child: Image.network(
                              'https://www.itying.com/images/flutter/2.png',
                              fit: BoxFit.cover),
                        )
                      ],
                    ))),
          ],
        )
      ],
    );
  }
}
