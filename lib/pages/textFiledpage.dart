import 'package:flutter/material.dart';

class TextFiledPage extends StatefulWidget {
  TextFiledPage({Key key}) : super(key: key);

  @override
  _TextFiledPageState createState() {
    return _TextFiledPageState();
  }
}

class _TextFiledPageState extends State<TextFiledPage> {
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
        title: Text('表单演示页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  //修饰表单元素  类似于placeholder
                  hintText: '请输入搜索的内容',
              border: OutlineInputBorder()//表单加边框
              ),


            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              //maxlength最大字数
              maxLines: 4,
              decoration: InputDecoration(
                  //修饰表单元素  类似于placeholder
                  hintText: '多行文本框',
              border: OutlineInputBorder()//表单加边框
              ),


            ),SizedBox(
              height: 20,
            ),
            TextField(
              //maxlength最大字数
              obscureText: true,
              decoration: InputDecoration(
                  //修饰表单元素  类似于placeholder
                  hintText: '密码框',
              icon: Icon(Icons.people),
              labelText: '密码',//顶部提示
//              border: OutlineInputBorder()//表单加边框
              ),


            ),
          ],
        ),
      ),
    );
  }
}
