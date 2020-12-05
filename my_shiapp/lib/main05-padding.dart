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
        body: layoutDemo(),
      ),
      theme: ThemeData(primaryColor: Colors.redAccent),
    );
  }
}

class layoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.7,
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/5.png',
                fit: BoxFit.cover,
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/4.png',
                fit: BoxFit.cover,
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/4.png',
                fit: BoxFit.cover,
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/3.png',
                fit: BoxFit.cover,
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/5.png',
                fit: BoxFit.cover,
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/4.png',
                fit: BoxFit.cover,
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/3.png',
                fit: BoxFit.cover,
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/2.png',
                fit: BoxFit.cover,
              )),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Image.network(
                'https://www.itying.com/images/flutter/1.png',
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }
}
