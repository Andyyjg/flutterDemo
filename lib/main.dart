//引入基本库
import 'dart:ui' as prefix0;

import 'package:flutter_localizations/flutter_localizations.dart';
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
      //组件国际化设置
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('zh','CH'),
        const Locale('en','US'),
      ],
      debugShowCheckedModeBanner: false,
      home: Tabs(),
      initialRoute: '/http',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
