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
      //侧边栏  2，侧边栏路由跳转
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: DrawerHeader(
                    child: Text('你好，小可爱'),
                    decoration: BoxDecoration(
                        // color: Colors.blue
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.itying.com/images/flutter/4.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('我的空间'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: (Text('用户中心')),
              onTap: () {
                Navigator.of(context).pop(); //隐藏侧边栏
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: (Text('设置中心')),
            )
          ],
        ),
      ),
      endDrawer: Drawer(
          //右侧侧边栏
          child: Column(
        children: [
          Center(
            child: Row(
              children: [
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text('一一在学习呀'),
                    accountEmail: Text('123@qq.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.itying.com/images/flutter/4.png"),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.itying.com/images/flutter/1.png"),
                            fit: BoxFit.cover)),
                    otherAccountsPictures: [
                      Image.network(
                          "https://www.itying.com/images/flutter/2.png"),
                      Image.network(
                          "https://www.itying.com/images/flutter/3.png")
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
