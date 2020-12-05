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

//row 横向水平布局
// class LayoutDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       height: 600.0,
//       width: 400.0,
//       color: Colors.pink,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.end, //纵轴用的比较少
//         children: [
//           IconContainer(Icons.search, color: Colors.amber),
//           IconContainer(Icons.home, color: Colors.blue),
//           IconContainer(Icons.dangerous, color: Colors.orange),
//         ],
//       ),
//     );
//   }
// }

//column垂直纵向布局

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 600.0,
      width: 200.0,
      color: Colors.pink,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center, //纵轴用的比较少
        children: [
          IconContainer(Icons.search, color: Colors.amber),
          IconContainer(Icons.home, color: Colors.blue),
          IconContainer(Icons.dangerous, color: Colors.orange),
        ],
      ),
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
