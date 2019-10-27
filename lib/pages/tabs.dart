import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Cata.dart';
import './Home.dart';
import './search.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() {
    return _TabsState();
  }
}

class _TabsState extends State<Tabs> {
  int index = 0;
  List _pageList = [
    HomePage(),
    Catapage(),
    SearchPage(),
  ];

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
        title: Text('flutterDemo'),
      ),
      body: this._pageList[this.index],
      //地步导航条
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.purple,
        type: BottomNavigationBarType.fixed,//设置可以有多个按钮
        iconSize: 30,
        currentIndex: this.index, //默认选中哪个
        onTap: (int index) {
          setState(() {
            this.index = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('主页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), title: Text('分类')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('搜索')),

        ],
      ),
    );
  }
}
