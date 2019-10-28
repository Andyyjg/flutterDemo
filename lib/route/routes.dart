import 'package:flutter/material.dart';
import '../pages/Cata.dart';
import '../pages/Home.dart';
import '../pages/search.dart';
import '../pages/tabs.dart';
import '../pages/appBar.dart';
import '../pages/tabController.dart';
import '../pages/user.dart';
import '../pages/buttons.dart';

final routes = {
  '/': (context) => Tabs(),
  '/search': (context,{arguments}) => SearchPage(arguments:arguments),
  '/cata': (context,{arguments}) => Catapage(arguments:arguments),
  '/appbar':(context)=>AppBarPage(),
  '/tabcontroller':(context)=>TabControllerPage(),
  '/user':(context)=>UserPage(),
  '/button':(context)=>ButtonspPage()
};


// ignore: top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBulider = routes[name];

  if (settings.arguments != null) {
    final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBulider(context, arguments: settings.arguments));
    return route;
  } else {
    final Route route =
        MaterialPageRoute(builder: (context) => pageContentBulider(context));
    return route;
  }
};