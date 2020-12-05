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

//Expanded 类似web中的flex布局
class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        IconContainer(Icons.search, color: Colors.amber),
        Expanded(
          flex: 2,
          child: IconContainer(Icons.home, color: Colors.pink),
        ),
        IconContainer(Icons.book, color: Colors.blue),
      ],
    );
  }
}

class IconContainer extends StatelessWidget {
  double size = 26.0;
  Color color = Colors.red;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100.0,
      width: 100,
      color: this.color,
      child: Center(
        child: Icon(this.icon, size: this.size, color: Colors.white),
      ),
    );
  }
}
