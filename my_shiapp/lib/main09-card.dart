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

//AspectRatio组件
//
class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  '李可',
                  style: TextStyle(fontSize: 26),
                ),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：XXXXXXxxx'),
              ),
              ListTile(
                title: Text('地址：XXXXXXXX'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  '王麻子',
                  style: TextStyle(fontSize: 26),
                ),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：XXXXXXxxx'),
              ),
              ListTile(
                title: Text('地址：XXXXXXXX'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  '五四',
                  style: TextStyle(fontSize: 26),
                ),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：XXXXXXxxx'),
              ),
              ListTile(
                title: Text('地址：XXXXXXXX'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  '李三',
                  style: TextStyle(fontSize: 26),
                ),
                subtitle: Text('工程师'),
              ),
              ListTile(
                title: Text('电话：XXXXXXxxx'),
              ),
              ListTile(
                title: Text('地址：XXXXXXXX'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  '小亲',
                  style: TextStyle(fontSize: 26),
                ),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话：XXXXXXxxx'),
              ),
              ListTile(
                title: Text('地址：XXXXXXXX'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
