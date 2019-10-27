import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  final arguments;
  SearchPage({this.arguments}) ;

  @override
  _SearchPageState createState() {
    return _SearchPageState();
  }
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索'),
      ),
      body: Text('${widget.arguments !=null?widget.arguments['name']:'默认姓名'}'),
    );
  }
}