import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/Product.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/ProductInfo.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';

import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';

import '../pages/User.dart';

import '../pages/ButtonPage.dart';
import '../pages/TextField.dart';

import '../pages/FormDemo.dart';
import '../pages/DatePicker.dart';
import '../pages/DatePickerPub.dart';

//配置路由
final routes = {
  //常量
  '/': (context) => Tabs(),
  '/form': (context) => FormPage(),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/product': (context) => ProductPage(),
  '/productInfo': (context, {arguments}) => ProductInfoPage(
        arguments: arguments,
      ),
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),

  '/appBarDemo': (context) => AppBarDemoPage(),
  '/tabBarController': (context) => TabBarControllerPage(),
  '/user': (context) => UserPage(),
  '/buttonPage': (context) => ButtonPage(),
  '/textField': (context) => TextFieldDemoPage(),
  '/formDemo': (context) => FormDemoPage(),
  '/datePicker': (context) => DatePickerDemo(),
  '/datePickerPub': (context) => DatePickerPubDemo()
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
