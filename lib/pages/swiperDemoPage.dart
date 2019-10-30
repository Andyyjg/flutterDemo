import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperDemoPage extends StatefulWidget {
  SwiperDemoPage({Key key}) : super(key: key);

  @override
  _SwiperDemoPageState createState() {
    return _SwiperDemoPageState();
  }
}

class _SwiperDemoPageState extends State<SwiperDemoPage> {
  List<Map> imageList = [
    {'url': 'https://www.itying.com/images/flutter/2.png'},
    {'url': 'https://www.itying.com/images/flutter/3.png'},
    {'url': 'https://www.itying.com/images/flutter/4.png'},
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
        title: Text('swipper'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity, //宽度百分百设置
            height: 250,
            child: AspectRatio(
              aspectRatio: 16 / 9, //宽高比例
              child: new Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    imageList[index]['url'],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: imageList.length,
                loop: true,
                //循环
                autoplay: true,
//                itemWidth: 300.0,
//                itemHeight: 400.0,
                control: new SwiperControl(),
                //左右箭头
                pagination: new SwiperPagination(), //小点
//        viewportFraction: 0.8,
//        scale: 0.9, //缩放
              ), //按照比例显示
            ),
          ),
          Row(
            children: <Widget>[Text('我是一个文本')],
          )
        ],
      ),
    );
  }
}
//new Swiper(
//itemBuilder: (BuildContext context, int index) {
//return new Image.network(
//imageList[index]['url'],
//fit: BoxFit.fill,
//);
//},
//itemCount: imageList.length,
//itemWidth: 300.0,
//itemHeight: 400.0,
//control:new SwiperControl() ,//左右箭头
////        viewportFraction: 0.8,
////        scale: 0.9, //缩放
//),
