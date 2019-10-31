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
// http://www.liulongbin.top:3005/api/v2/movie/top250?start=0&count=10
//  "http://www.liulongbin.top:3005/api/v2/movie/${widget.tabFlag}?start=$offSet&count=$pageSize");
  // 服务器返回的真正数据
  int page = 1;
  int pageSize = 10;
  var mlist = [];
  var total = 0;
  var dio = Dio();

  _getList() async {
    int offset = (page - 1) * pageSize;
    var response = await dio.get(
        "http://www.liulongbin.top:3005/api/v2/movie/top250?start=$offset&count=$pageSize");
    var result = response.data;
    setState(() {
      //通过dio返回的数据必须通过 []来访问
      mlist = result['subjects'];
      total = result['total'];
    });

  }

  @override
  void initState() {
    super.initState();
    this._getList();
  }

  @override
  void dispose() {
    super.dispose();
  }

//渲染视图
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('电影列表'),
      ),
      body: ListView.builder(
        itemCount: mlist.length,
        itemBuilder: (
          BuildContext ctx,
            int i
        ) {
          var mitem=mlist[i];
          return Container(
            height: 200,
            decoration: BoxDecoration(
//              color: Colors.red,
              border:Border(
                top:BorderSide(color: Colors.black12)
              )
            ),
            child: Row(
              children: <Widget>[
                Image.network(mitem['images']['small'],width: 130,height: 180,fit: BoxFit.cover,),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 200,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('电影名称：${mitem['title']}'),
                      Text('上映年份:${mitem['year']}年'),
                      Text('电影类型：${mitem['genres'].join('，')}'),
                      Text('豆瓣评分：${mitem['rating']['average']}分'),
                      Text('只要演员：${mitem['title']}'),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ), //必须有  循环次数
    );
  }
}
