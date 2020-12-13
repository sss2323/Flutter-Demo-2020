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

// class LayoutDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         Card(
//           margin: EdgeInsets.all(8),
//           child: Column(
//             children: [
//               AspectRatio(
//                   aspectRatio: 20 / 9, //控制子元素的宽高比
//                   child: Image.network(
//                       'https://www.itying.com/images/flutter/1.png',
//                       fit: BoxFit.cover)),
//               ListTile(
//                 // leading: ClipOval(
//                 //   child: Image.network(
//                 //     'https://www.itying.com/images/flutter/1.png',
//                 //     fit: BoxFit.cover,
//                 //   ),
//                 // ),
//                 leading: CircleAvatar(
//                   backgroundImage: NetworkImage(
//                       'https://www.itying.com/images/flutter/1.png'),
//                 ),
//                 title: Text(
//                   '李可',
//                 ),
//                 subtitle: Text('高级工程师'),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: listData.map((value) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  value['imageUrl'],
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value['imageUrl']),
                ),
                title: Text(value['title']),
                subtitle: Text(
                  value['author'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
