import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  AppBarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(

      length: 6,
      child: Scaffold(
          appBar: AppBar(
            title: Text('AppBarDemo'),
            centerTitle: true, //标题剧中显示
//        backgroundColor: Colors.red,//背景颜色
//          leading: IconButton(
//            //导航前边图标
//            icon: Icon(Icons.menu),
//            onPressed: () {
//              print('meat');
//            },
//          ), //给导航前边加上按钮图标  按钮图标iconButton
            actions: <Widget>[
              //导航后边的图标
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('search');
                },
              )
            ],
            bottom: TabBar(
              isScrollable: true,//允许滚动
              tabs: <Widget>[
                //顶部tab
                Tab(
                  text: '热门',
                ),
                Tab(
                  text: '推荐',
                ),
                Tab(
                  text: '热门',
                ),
                Tab(
                  text: '推荐',
                ),
                Tab(
                  text: '热门',
                ),
                Tab(
                  text: '推荐',
                ),
              ],
            ),
          ),
          //下边数量必须要与上百年菜单的数量相同
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
          )),
    );
  }
}
