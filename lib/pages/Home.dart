import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
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
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('跳转去分类'),
            onPressed: (){
              Navigator.pushNamed(context, '/cata',arguments: {'id':123});
            },
          ),
          SizedBox(
            height: 200,
          ),
          RaisedButton(
            child: Text('跳转去搜索'),
            onPressed: (){
              Navigator.pushNamed(context, '/search',arguments: {'name':'张三'});
            },
          ),
          SizedBox(
            height: 200,
          ),
          RaisedButton(
            child: Text('跳转至AppBar'),
            onPressed: (){
              Navigator.pushNamed(context, '/appbar');
            },
          ),
          SizedBox(
            height: 200,
          ),
          RaisedButton(
            child: Text('跳转看电影'),
            onPressed: (){
              Navigator.pushNamed(context, '/movie');
            },
          )
        ],
      ),
    );
  }
}