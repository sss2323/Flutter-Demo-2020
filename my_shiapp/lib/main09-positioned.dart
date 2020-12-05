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

// class LayoutDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Stack(
//         // alignment: Alignment.bottomLeft,
//         alignment: Alignment(1, 0.3),
//         children: [
//           Container(
//             height: 400,
//             width: 300,
//             color: Colors.red,
//           ),
//           Text(
//             'data',
//             style: TextStyle(fontSize: 40, color: Colors.pink),
//           )
//         ],
//       ),
//     );
//   }
// }

//stack 层叠组件，stack 与alignment,stack 与 positioned  实现定位布局
class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 400,
      width: 300,
      color: Colors.red,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 0,
            child: Icon(Icons.home, size: 40, color: Colors.white),
          ),
          Positioned(
            left: 10,
            child: Icon(Icons.search, size: 30, color: Colors.white),
          ),
          Positioned(
            right: 0,
            child: Icon(Icons.send, size: 60, color: Colors.white),
          ),
          Positioned(
            right: 100,
            child: Icon(Icons.book, size: 40, color: Colors.white),
          )
        ],
      ),
    ));
  }
}
