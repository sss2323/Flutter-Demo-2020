import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

// 组件抽离
class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex;
  _TabsState(index) {
    this._currentIndex = index;
  }
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' 粉色小星球hi')),
      body: this._pageList[this._currentIndex], //配置对应索引值选中
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            //改变状态
            this._currentIndex = index;
          });
        },
        iconSize: 36.0, //icon 的大小
        fixedColor: Colors.red, //选中的颜色
        // type: BottomNavigationBarType.fixed, //配置底部tabs可以有多个按钮
        items: [
          // ignore: deprecated_member_use
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          // ignore: deprecated_member_use
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text('分类')),
          // ignore: deprecated_member_use
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('设置'))
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.settings), title: Text('设置')),
          // BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('设置'))
        ],
      ),
    );
  }
}
