import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  AppBarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBarDemo'),
//        backgroundColor: Colors.red,//背景颜色
      leading:IconButton(//导航前边图标
        icon: Icon(Icons.menu),
        onPressed: (){
          print('meat');
        },
      ),//给导航前边加上按钮图标  按钮图标iconButton
      actions: <Widget>[//导航后边的图标
          IconButton(
            icon:Icon(Icons.search),
            onPressed: (){
              print('search');
            },
          )
      ],

      ),
      body:Text('111')
    );
  }
}
