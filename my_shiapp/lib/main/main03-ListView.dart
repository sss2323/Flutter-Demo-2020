import 'package:flutter/material.dart';
import 'package:my_shiapp/res/listData.dart';
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

//ListView 图文列表布局【垂直列表】
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListView(
//       padding: EdgeInsets.all(15),
//       children: [
//         ListTile(
//           // leading: Icon(Icons.settings, size: 20),
//           leading:
//               Image.network('https://i0.hdslb.com/bfs/face/member/noface.jpg'),
//           title: Text(
//             '习近平向“声援巴勒斯坦人民国际日”纪念大会致贺电',
//             style: TextStyle(fontSize: 14),
//           ),
//           subtitle: Text('新华社北京12月2日电 '),
//           trailing:
//               Image.network('https://i0.hdslb.com/bfs/face/member/noface.jpg'),
//         ),
//         ListTile(
//           leading: Icon(
//             Icons.home,
//             color: Colors.pink,
//           ),
//           title: Text('谢霆锋对另一半要求，“锋芝恋”没结果是必然，'),
//           subtitle: Text(' 王菲才是最终归宿'),
//         ),
//         ListTile(
//           leading: Icon(Icons.ac_unit_outlined),
//           title: Text('作为总集数45集的电视剧来说，最后一集的大结局还是单独放出，'),
//           subtitle: Text(' 12月1日，联合国举行“声援巴勒斯坦人民国际日”纪念大会，国家主席习近平向大会致贺电。'),
//           // trailing: Icon(Icons.accessibility_new),
//         ),
//         ListTile(
//           leading: Icon(Icons.access_alarms_rounded),
//           title: Text('新华社北京12月2日电'),
//           subtitle: Text(' 12月1日，联合国举行“声援巴勒斯坦人民国际日”纪念大会，国家主席习近平向大会致贺电。'),
//         ),
//         ListTile(
//           leading: Icon(Icons.ac_unit),
//           title: Text('近日，由张一山等人主演的新版本《鹿鼎记》已经收官，'),
//           subtitle: Text(' 作为总集数45集的电视剧来说，最后一集的大结局还是单独放出，'),
//         ),
//         ListTile(
//           leading: Icon(Icons.zoom_out_outlined),
//           title: Text('张一山版本《鹿鼎记》收官，口碑大反转，导演果然有眼光'),
//           subtitle: Text(
//               ' 近日，由张一山等人主演的新版本《鹿鼎记》已经收官，作为总集数45集的电视剧来说，最后一集的大结局还是单独放出，并没有一口气播出4集，不免有些让人无奈。可以说的是：张一山版本的《鹿鼎记》自从开播以来受到许多争议，并且开播第一天开始2.7的评分来说，是大家没想到的事情。对于，评分低的原因：无非就是大家讨论的2个点的就是张一山的演技和剧情的发展，可是张一山的演技又是大家有目共睹的一件事情。看过张一山主演众多影视剧来说：张一山的演技可谓是“老戏骨”的演技。当张一山到了新版本《鹿鼎记》这里，却被众却被观众认为张一山饰演的“韦小宝”表情浮夸，跟之前的“韦小宝”相比，少了大家熟悉的感觉。张一山塑造的韦小宝在剧中像“猴子”一样，没有了市井上那种古灵精怪。'),
//         ),
//         ListTile(
//           leading: Icon(Icons.access_alarm_sharp),
//           title: Text('焦点访谈：走过“黄金十年”，下一站：“钻石十年”'),
//           subtitle: Text(
//               '央视网消息：11月30日，第十七届中国—东盟博览会和中国—东盟商务与投资峰会在广西南宁圆满落下帷幕。线上线下为国内外客商促成了3000对精准配对，共签约国际、国内投资合作项目86个，合作项目规模创历史新高。而值得注意的是，本届东博会和峰会召开的时间正值中国—东盟自贸区成立十周年，此外，包括东盟和中日韩在内15个国家的《区域全面经济伙伴关系协定》，也于11月15日正式签署。在新冠肺炎疫情和百年变局交织之下，这些都让本届东博会和峰会具有了非同寻常的意义。中国和东盟国家是山水相连的友好邻邦，命运休戚与共的重要伙伴。无论是团结抗疫，还是经贸往来，中国与东盟合作的蓬勃生机和强劲势头，折射出合作共赢的时代潮流，成为中国开放发展的重要平台。习近平主席强调：“明年中国将开启全面建设社会主义现代化国家新征程。中国将坚定不移扩大对外开放，中国同东盟合作空间将更为广阔。”在开放中扩大共同利益，在合作中实现机遇共享。展望未来，中国将同包括东盟在内的世界各国并肩前行，推动构建人类命运共同体，共创繁荣美好的未来。'),
//         )
//       ],
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListView(
//       padding: EdgeInsets.all(15),
//       children: [
//         Image.network('https://i0.hdslb.com/bfs/face/member/noface.jpg'),
//         Container(
//           width: 188,
//           color: Colors.red,
//           child: Text(
//             '我是标题君',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 20,
//             ),
//           ),
//           height: 28,
//         ),
//         Image.network('https://www.itying.com/images/flutter/2.png'),
//         Container(
//           child: Text(
//             '我是标题君',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 20,
//             ),
//           ),
//           height: 28,
//         ),
//         Image.network('https://www.itying.com/images/flutter/3.png'),
//         Container(
//           child: Text(
//             '我是标题君',
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontSize: 20,
//             ),
//           ),
//           height: 28,
//         ),
//         Image.network('https://www.itying.com/images/flutter/4.png'),
//         Image.network('https://www.itying.com/images/flutter/5.png'),
//         Image.network('https://i0.hdslb.com/bfs/face/member/noface.jpg'),
//       ],
//     );
//   }
// }
//水平列表
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       height: 150,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: [
//           Container(
//             width: 100,
//             color: Colors.deepOrangeAccent,
//           ),
//           Container(
//             width: 100,
//             color: Colors.red,
//             child: ListView(
//               children: [
//                 Image.network('https://www.itying.com/images/flutter/5.png'),
//                 Text('我是小可爱哈～')
//               ],
//             ),
//           ),
//           Container(
//             width: 100,
//             color: Colors.deepOrange,
//           ),
//           Container(
//             width: 100,
//             color: Colors.redAccent,
//           )
//         ],
//       ),
//     );
//   }
// }

// flutter listview 列表组件 ，动态列表
//for
// class HomeContent extends StatelessWidget {
//   //自定义方法
//   List<Widget> _getData() {
//     List<Widget> list = new List();
//     for (var i = 0; i < 20; i++) {
//       list.add(ListTile(
//         title: Text('小可爱的$i列表'),
//       ));
//     }
//     return list;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: this._getData(),
//     );
//   }
// }

// map 遍历
// class HomeContent extends StatelessWidget {
//   //自定义方法
//   List<Widget> _getData() {
//     var tempList = listData.map((value) {
//       return ListTile(
//           leading: Image.network(value["imageUrl"]),
//           title: Text(value["title"]),
//           subtitle: Text(value["author"]));
//     });
//     return tempList.toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: this._getData(),
//     );
//   }
// }

//    ListView.builder

// class HomeContent extends StatelessWidget {
//   List list = new List();
//   HomeContent() {
//     for (var i = 0; i < 20; i++) {
//       this.list.add('我是第$i小可爱吧');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListView.builder(
//         itemCount: this.list.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(this.list[index]),
//           );
//         });
//   }
// }

class HomeContent extends StatelessWidget {
  Widget _getListData(context, index) {
    return ListTile(
        leading: Image.network(listData[index]["imageUrl"]),
        title: Text(listData[index]["title"]),
        subtitle: Text(listData[index]["author"]));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: listData.length, itemBuilder: this._getListData);
  }
}
