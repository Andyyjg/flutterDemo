import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class HttpDemo extends StatefulWidget {
  HttpDemo({Key key}) : super(key: key);

  @override
  _HttpDemoState createState() {
    return _HttpDemoState();
  }
}

class _HttpDemoState extends State<HttpDemo> {
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
          title: Text('Http请求'),
          elevation: 0.5,
        ),
        body: HttpDemoPage());
    ;
  }
}

class HttpDemoPage extends StatefulWidget {
  HttpDemoPage({Key key}) : super(key: key);

  @override
  _HttpDemoPageState createState() {
    return _HttpDemoPageState();
  }
}

class _HttpDemoPageState extends State<HttpDemoPage> {
  List<Widget> _list=[Text('hello')] ;
  var url = 'http://resources.ninghao.net/demo/posts.json';

  _fetchPost() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      List tmpList = jsonResponse['posts'];
      print(jsonResponse['posts'] is List);
      for (var i = 0; i < tmpList.length; i++) {
//        var tmp = tmpList[i];
      setState(() {
        _list.add(Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[Text('hello')],
            )));

      });

      }

    } else {
      print("Request failed with status: ${response.statusCode}.");
    }

  }

  @override
  void initState() {
    super.initState();
    _fetchPost();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: _list,
    );
  }
}
