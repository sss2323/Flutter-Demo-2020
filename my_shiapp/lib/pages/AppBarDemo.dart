import 'package:flutter/material.dart';

// 自定义appbar

//实现顶部tab切换
class AppBarDemoPage extends StatefulWidget {
  AppBarDemoPage({Key key}) : super(key: key);

  @override
  _AppBarDemoPageState createState() => _AppBarDemoPageState();
}

class _AppBarDemoPageState extends State<AppBarDemoPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, //顶部切换数量
        child: Scaffold(
          appBar: AppBar(
            title: Text('AppBarDemoPageState'),
            // backgroundColor: Colors.red,
            centerTitle: true, //无论安卓还是ios 都是剧中显示
            // // leading: IconButton(
            // //   //按钮图标
            // //   icon: Icon(Icons.menu),
            // //   onPressed: () {
            // //     print('menu');
            // //   },
            // // ),
            // actions: [
            //   IconButton(
            //     //按钮图标
            //     icon: Icon(Icons.search),
            //     onPressed: () {
            //       print('search');
            //     },
            //   ),
            //   IconButton(
            //     //按钮图标
            //     icon: Icon(Icons.settings),
            //     onPressed: () {
            //       print('settings');
            //     },
            //   )
            // ],
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "热门",
                ),
                Tab(
                  text: "推荐",
                ),
                Tab(
                  text: "新闻",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  ListTile(
                    title: Text("第一个tab"),
                  ),
                  ListTile(
                    title: Text("第1个tab"),
                  ),
                  ListTile(
                    title: Text("第1个tab"),
                  )
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("第2个tab"),
                  ),
                  ListTile(
                    title: Text("第2个tab"),
                  ),
                  ListTile(
                    title: Text("第2个tab"),
                  )
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text("第3个tab"),
                  ),
                  ListTile(
                    title: Text("第3个tab"),
                  ),
                  ListTile(
                    title: Text("第3个tab"),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
