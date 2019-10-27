import 'package:flutter/material.dart';

class Catapage extends StatelessWidget {
  final arguments;
  Catapage({this.arguments});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('分类页面'),
      ),
      body: Text('页面内容是${arguments!=null?arguments['id']:'0'}'),
    );
  }
}
