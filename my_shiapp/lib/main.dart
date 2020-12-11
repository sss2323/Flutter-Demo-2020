import 'package:flutter/material.dart';
import 'pages/Tabs.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        initialRoute: '/',
        onGenerateRoute: onGenerateRoute);
  }
}
