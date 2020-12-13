import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void dispose() {
    //生命周期函数  =--当组件销毁时触发
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    //生命周期函数--当组件一触发就执行
    super.initState();

    _tabController = new TabController(length: 2, vsync: this);

    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TabBarController'),
          bottom: TabBar(
            ///
            controller: this._tabController,

            ///
            tabs: [
              Tab(
                text: "股市",
              ),
              Tab(
                text: "明星",
              ),
            ],
          ),
        ),
        body: TabBarView(
          ////
          controller: this._tabController,

          ///
          children: [
            Center(
              child: Text('我是顶部切换组件···股市'),
            ),
            Center(
              child: Text('我是顶部切换组件···明星'),
            )
          ],
        ));
  }
}
