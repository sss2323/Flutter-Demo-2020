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

// flutter gridview 组件 以及动态 gridview
// class HomeContent extends StatelessWidget {
//   List<Widget> _getListData() {
//     var tempList = listData.map((value) {
//       return Container(
//           child: Column(
//             children: <Widget>[
//               Image.network(value["imageUrl"]),
//               SizedBox(height: 30),
//               Text(
//                 value['title'],
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 16),
//               )
//             ],
//           ),
//           // color: Colors.blue,
//           decoration: BoxDecoration(
//               border: Border.all(
//                   color: Color.fromRGBO(233, 233, 233, .9), width: 1)));
//     });
//     //('xxx','xxx')
//     return tempList.toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return GridView.count(
//       padding: EdgeInsets.all(10),
//       crossAxisCount: 2,
//       mainAxisSpacing: 20,
//       crossAxisSpacing: 20,
//       childAspectRatio: .8,
//       children: this._getListData(),
//     );
//   }
// }
//--------------------------gridview.build  动态网络布局
class HomeContent extends StatelessWidget {
  Widget _getListData(context, index) {
    return Container(
        child: Column(
      children: <Widget>[
        Image.network(listData[index]["imageUrl"]),
        SizedBox(height: 15),
        Text(
          listData[index]['title'],
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(15),
      child: GridView.builder(
        // padding: EdgeInsets.all(10),
        // crossAxisCount: 2,
        // mainAxisSpacing: 20,
        // crossAxisSpacing: 20,
        // childAspectRatio: .8,
        // children: this._getListData(),

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 15.0, mainAxisSpacing: 15.0, crossAxisCount: 2),
        itemCount: listData.length,
        itemBuilder: this._getListData,
      ),
    );
  }
}
