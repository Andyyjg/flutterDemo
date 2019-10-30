import 'package:flutter/material.dart';
import '../pages/Cata.dart';
import '../pages/Home.dart';
import '../pages/search.dart';
import '../pages/tabs.dart';
import '../pages/appBar.dart';
import '../pages/tabController.dart';
import '../pages/user.dart';
import '../pages/buttons.dart';
import '../pages/textFiledpage.dart';
import '../pages/checkBoxDemo.dart';
import '../pages/radioPage.dart';
import '../pages/formDemo.dart';
import '../pages/dateDemo.dart';
import '../pages/otherDatePicker.dart';
import '../pages/swiperDemoPage.dart';
import '../pages/expansionTileDemo.dart';
import '../http/gttpDemo..dart';

final routes = {
  '/': (context) => Tabs(),
  '/search': (context,{arguments}) => SearchPage(arguments:arguments),
  '/cata': (context,{arguments}) => Catapage(arguments:arguments),
  '/appbar':(context)=>AppBarPage(),
  '/tabcontroller':(context)=>TabControllerPage(),
  '/user':(context)=>UserPage(),
  '/button':(context)=>ButtonspPage(),
  '/textfiled':(context)=>TextFiledPage(),
  '/check':(context)=>CheckBoxPage(),
  '/radio':(context)=>RadioDemoPage(),
  '/form':(context)=>FormDemoPage(),
  '/date':(context)=>DateDemoPage(),
  '/other':(context)=>OtherDatePicker(),
  '/swiper':(context)=>SwiperDemoPage(),
  '/expansion':(context)=>ExpansionTilePage(),
  '/http':(context)=>HttpDemo()
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
