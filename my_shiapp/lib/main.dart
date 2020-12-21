import 'package:flutter/material.dart';

// import 'package:flutter_localizations/flutter_localizations.dart';

import 'pages/Tabs.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        localizationsDelegates: [
          //此处
          // GlobalMaterialLocalizations.delegate,
          // GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          //此处
          const Locale('zh', 'CH'),
          const Locale('en', 'US'),
        ],
        debugShowCheckedModeBanner: false, //去掉debug图标
        home: Tabs(),
        theme: ThemeData(primaryColor: Colors.redAccent),
        //命名路由
        // routes: {
        //   '/form': (context) => FormPage(),
        //   '/search': (context) => SearchPage(),
        // },
        // initialRoute: '/', //初始化要加载的路由

        initialRoute: '/', //初始化要加载的路由
        onGenerateRoute: onGenerateRoute);
  }
}
