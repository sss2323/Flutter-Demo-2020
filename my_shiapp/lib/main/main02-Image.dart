import 'package:flutter/material.dart';
// void main() => {
//       runApp(Center(
//         child: Text('我来是粉色星球的依依'),
//       ))
//     };

void main() => {runApp(MyApp())};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('依依的粉色星球')),
          body: HomeContent(),
        ),
        theme: ThemeData(primarySwatch: Colors.pink));
  }
}

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Text(
//         '欢迎来到依依的粉色星球～，你在这将会收获快乐和幸福',
//         style: TextStyle(
//           fontSize: 15.0,
//           color: Colors.pink,
//         ),
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//         child: Container(
//       child: Image.network(
//           "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606825372018&di=3f2d66e441fda8920d99e0c83fd48f66&imgtype=0&src=http%3A%2F%2Fa2.att.hudong.com%2F27%2F81%2F01200000194677136358818023076.jpg",
//           alignment: Alignment.center,
//           color: Colors.pinkAccent,
//           colorBlendMode: BlendMode.screen,
//           fit: BoxFit.cover,
//           repeat: ImageRepeat.repeat),
//       width: 300,
//       height: 300,
//       decoration: BoxDecoration(color: Colors.yellow),
//     ));
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//         child: Container(
//       width: 300,
//       height: 300,
//       decoration: BoxDecoration(
//           color: Colors.yellow,
//           // borderRadius: BorderRadius.all(Radius.circular(150))),
//           borderRadius: BorderRadius.circular(150),
//           image: DecorationImage(
//               image: NetworkImage(
//                   "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606825372018&di=3f2d66e441fda8920d99e0c83fd48f66&imgtype=0&src=http%3A%2F%2Fa2.att.hudong.com%2F27%2F81%2F01200000194677136358818023076.jpg"),
//               fit: BoxFit.cover
//               )
//               ),
//     ));
//   }
// }

//简单的图片引入方式(引入远程图片)
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Container(
//         child: ClipOval(
//           child: Image.network(
//             "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1606825372018&di=3f2d66e441fda8920d99e0c83fd48f66&imgtype=0&src=http%3A%2F%2Fa2.att.hudong.com%2F27%2F81%2F01200000194677136358818023076.jpg",
//             height: 300,
//             width: 300,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }

//flutter 引入本地图片  1.新建images目录，2.修改pubspec.yaml  assets

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset(
          "images/girls.jpg",
          // fit: BoxFit.cover,
        ),
        // width: 100.0,
        // height: 300.0,
        // decoration: BoxDecoration(color: Colors.yellow),
      ),
    );
  }
}
