import 'package:flutter/material.dart';
import 'package:my_shiapp/pages/Tabs.dart';
// import 'package:my_shiapp/pages/Form.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Row(
                children: [
                  Expanded(
                    child: TabBar(
                      isScrollable: true, //如果有多个按钮可以滚动
                      indicatorColor: Colors.red, //指示器的颜色，选中的颜色
                      labelColor: Colors.white, //文字的颜色
                      unselectedLabelColor: Colors.green, //未选中的颜色
                      indicatorSize: TabBarIndicatorSize.label, //指示器的长度
                      tabs: [
                        Tab(text: "热销0"),
                        Tab(
                          text: "推荐1",
                        ),
                        Tab(text: "热销2"),
                        Tab(
                          text: "推荐3",
                        ),
                        Tab(text: "热销4"),
                        Tab(
                          text: "推荐5",
                        ),
                        Tab(text: "热销6"),
                        Tab(
                          text: "推荐7",
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // bottom:
            ),
            body: TabBarView(
              children: [
                ListView(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RaisedButton(
                            child: Text('跳转到表单页面并传值'),
                            color: Theme.of(context).accentColor,
                            onPressed: () {
                              //基本路由跳转传值
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                              //   return FormPage(
                              //     title: '我是跳转传值',
                              //   );
                              // }));

                              //命名路由
                              Navigator.pushNamed(context, '/form');
                            },
                            textTheme: ButtonTextTheme.primary,
                          ),
                        ],
                      ),
                    ),
                    ListTile(title: Text("第0个tab")),
                    ListTile(title: Text("第0个tab"))
                  ],
                ),
                ListView(
                  children: [
                    ListTile(title: Text("第1个tab")),
                    ListTile(title: Text("第1个tab"))
                  ],
                ),
                ListView(
                  children: [
                    ListTile(title: Text("第2个tab")),
                    ListTile(title: Text("第2个tab"))
                  ],
                ),
                ListView(
                  children: [
                    ListTile(title: Text("第3个tab")),
                    ListTile(title: Text("第3个tab"))
                  ],
                ),
                ListView(
                  children: [
                    ListTile(title: Text("第4个tab")),
                    ListTile(title: Text("第4个tab"))
                  ],
                ),
                ListView(
                  children: [
                    ListTile(title: Text("第5个tab")),
                    ListTile(title: Text("第5个tab"))
                  ],
                ),
                ListView(
                  children: [
                    ListTile(title: Text("第6个tab")),
                    ListTile(title: Text("第6个tab"))
                  ],
                ),
                ListView(
                  children: [
                    ListTile(title: Text("第7个tab")),
                    ListTile(title: Text("第7个tab"))
                  ],
                ),
              ],
            )));
  }
}
