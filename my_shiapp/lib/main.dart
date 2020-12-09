import 'package:flutter/material.dart';
import 'package:my_shiapp/pages/Search.dart';
import 'pages/Tabs.dart';
import 'pages/Form.dart';
import 'pages/Search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = {
    '/form': (context) => FormPage(),
    '/search': (context, {arguments}) => SearchPage(arguments: arguments)
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Tabs(),
        theme: ThemeData(primaryColor: Colors.redAccent),
        //命名路由
        // routes: {
        //   '/form': (context) => FormPage(),
        //   '/search': (context) => SearchPage(),
        // },
        onGenerateRoute: (RouteSettings settings) {
          //统一处理
          final String name = settings.name;
          final Function pageContentBuilder = this.routes[name];
          if (pageContentBuilder != null) {
            if (settings.arguments != null) {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context,
                      arguments: settings.arguments));
              return route;
            } else {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context));
              return route;
            }
          }
        });
  }
}
