//引入基本库
import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'route/routes.dart';
import './pages/tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build  MaterialApp是根组建
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Tabs(),
      initialRoute: '/check',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
