import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:flutterdemo1/pages/appBar.dart';
class MovieListPage extends StatefulWidget {
  MovieListPage({Key key}) : super(key: key);

  @override
  _MovieListPageState createState() {
    return _MovieListPageState();
  }
}

class _MovieListPageState extends State<MovieListPage> {
  _getList(){

  }
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
        title:Text('电影列表'),
      ),
      body: Text('这是电影列表'),
    );
  }
}