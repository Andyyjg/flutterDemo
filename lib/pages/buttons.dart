import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonspPage extends StatelessWidget {
  ButtonspPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('按钮展示页面'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.pushNamed(context, '/user');
              },
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(//浮动按钮
          backgroundColor: Colors.yellow,
         child:Icon(Icons.add,color: Colors.black,size: 40,),//修改icon颜色
          onPressed: (){},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,//位置调整
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('普通'),
                  onPressed: () {
                    print('普通按钮');
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  child: Text('有颜色按钮'),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {
                    print('有颜色按钮');
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  child: Text('有阴影'),
                  elevation: 20.0,
                  onPressed: () {
                    print('阴影');
                  },
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 400,
                  child: RaisedButton(
                    child: Text('有颜色按钮'),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      print('有颜色按钮');
                    },
                  ),
                ) //设置按钮的宽高
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  //flex布局
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.all(10),
                    child: RaisedButton(
                      child: Text('自适应按钮'),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () {
                        print('自适应按钮');
                      },
                    ),
                  ),
                ) //设置按钮的宽高
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton.icon(
                    onPressed: () {
                      print('按钮图标');
                    },
                    textColor: Colors.white,
                    color: Colors.blue,
                    icon: Icon(Icons.search),
                    label: Text('图标按钮'))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('圆角按钮'),
                  textColor: Colors.white,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  //配置圆角
                  onPressed: () {
                    print('圆角');
                  },
                ),
                Container(
                  height: 80,
                  child: RaisedButton(
                    child: Text('圆形按钮'),
                    textColor: Colors.white,
                    color: Colors.blue,
                    splashColor: Colors.grey,
                    //水波纹
                    shape: CircleBorder(side: BorderSide(color: Colors.white)),
                    //配置圆角
                    onPressed: () {
                      print('圆角');
                    },
                  ),
                ),
                FlatButton(
                  //扁平化的按钮
                  child: Text('flat按钮'),
                  textColor: Colors.yellow,
                  color: Colors.blue,
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                OutlineButton(
                  child: Text('outline'),
                  textColor: Colors.blue,
                  color: Colors.blueAccent,
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Container(
                  height: 50,
                  child: OutlineButton(
                    child: Text('outline'),
                    textColor: Colors.blue,
                    color: Colors.blueAccent,
                    onPressed: () {},
                  ),
                ))
              ],
            ),
            Row(
              //按钮组
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('登陆'),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () {
                        print('注册');
                      },
                    ),
                    RaisedButton(
                      child: Text('注册'),
                      textColor: Colors.white,
                      color: Colors.blue,

                      //配置圆角
                      onPressed: () {
                        print('圆角');
                      },
                    ),
                  ],
                ),
                MyButton(text: '自定义按钮',width: 200,)
              ],
            )
          ],
        ));
  }
}

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final width;
  final height;

  const MyButton({this.text = '',this.pressed,this.width=80.0,this.height=30.0 });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50,
      width: 150,
      child: RaisedButton(child: Text(this.text), onPressed: this.pressed),
    );
  }
}
