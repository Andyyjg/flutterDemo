import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix0;
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
        type: BottomNavigationBarType.fixed,
        //设置可以有多个按钮
        iconSize: 30,
        currentIndex: this.index,
        //默认选中哪个
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
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            //头部
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text('天王老子'),
                    accountEmail: Text('15487545445@qq.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://www.itying.com/images/flutter/3.png',
                      ),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://www.itying.com/images/flutter/6.png'),
                            fit: BoxFit.cover)),
//                    otherAccountsPictures: <Widget>[
//                      Image.network('https://www.itying.com/images/flutter/4.png'),
//                      Image.network('https://www.itying.com/images/flutter/5.png'),
//                    ],
                  ),
//                  child:DrawerHeader(
//                    decoration: BoxDecoration(
////                      color: Colors.amber
//                    image: DecorationImage(//背景图片
//                      image:NetworkImage('https://www.itying.com/images/flutter/2.png'),
//                      fit: BoxFit.cover
//                    )
//                    ),
//                    child: Text('你好Flutter'),
//                  ) , //铺满空白
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('用户中心'),
            ),
            Divider(), //添加分割线
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.star),
              ),
              title: Text('我的空间'),
              onTap: () {
                Navigator.of(context).pop(); //隐藏侧边栏
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text('右侧测试变懒'),
      ),
    );
  }
}
