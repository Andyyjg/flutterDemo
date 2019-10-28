import 'package:flutter/material.dart';

class TabControllerPage extends StatefulWidget {
  TabControllerPage({Key key}) : super(key: key);

  @override
  _TabControllerPageState createState() {
    return _TabControllerPageState();
  }
}

class _TabControllerPageState extends State<TabControllerPage>
    with SingleTickerProviderStateMixin {
  //继承实现这个类  多继承
  TabController _tabController;

  @override
  void initState() {
    //组建生命周期函数
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  void dispose() {
    //组建销毁时触发的函数
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TabbarController'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(
              text: '热销',
            ),
            Tab(
              text: '推荐',
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(child: Text('热销')),
          Center(child: Text('推荐')),
        ],
      ),
    );
  }
}
