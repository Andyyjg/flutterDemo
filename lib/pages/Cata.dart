import 'package:flutter/material.dart';

class Catapage extends StatelessWidget {
  final arguments;

  Catapage({this.arguments});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              children: <Widget>[
                Expanded(
                  child: TabBar(
                    indicatorColor: Colors.purple,//指示器的颜色
                    tabs: <Widget>[
                      Tab(
                        text: '热销',
                      ),
                      Tab(
                        text: '推荐',
                      )
                    ],
                  ),
                )
              ],
            ),
//            bottom: ,
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                ],
              ),
            ],
          )), //scaffold中可以潜逃自己
    );
  }
}
