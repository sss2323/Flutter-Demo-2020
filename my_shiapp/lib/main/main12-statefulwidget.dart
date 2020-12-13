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
        body: HomePage(),
      ),
      theme: ThemeData(primaryColor: Colors.redAccent),
    );
  }
}

// class HomePage extends StatelessWidget {
//   int countNum = 1;
//   // const HomePage({Key key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       child: Column(
//         children: [
//           SizedBox(
//             height: 100,
//           ),
//           Text("${this.countNum}"),
//           SizedBox(
//             height: 20,
//           ),
//           RaisedButton(
//               child: Text('点我'),
//               onPressed: () {
//                 this.countNum++;
//                 print(this.countNum);
//               })
//         ],
//       ),
//     );
//   }
// }

// // //自定义有状态组件
// class HomePage extends StatefulWidget {
//   HomePage({Key key}) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int countNum = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Column(
//       children: [
//         Chip(
//           label: Text("${this.countNum}"),
//         ),
//         RaisedButton(
//             child: Text('点我'),
//             onPressed: () {
//               setState(() {
//                 this.countNum++;
//               });
//             })
//       ],
//     ));
//   }
// }

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
            children: this.list.map((value) {
          return ListTile(
            title: Text(value),
          );
        }).toList()),
        SizedBox(height: 20),
        RaisedButton(
            child: Text('按钮'),
            onPressed: () {
              setState(() {
                this.list.add('新增数据1');
                this.list.add('新增数据1');
              });
            })
      ],
    );
  }
}
