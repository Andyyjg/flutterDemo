import 'package:flutter/material.dart';

class TextFiledPage extends StatefulWidget {
  TextFiledPage({Key key}) : super(key: key);

  @override
  _TextFiledPageState createState() {
    return _TextFiledPageState();
  }
}

class _TextFiledPageState extends State<TextFiledPage> {
  var username = new TextEditingController();
  var _password=new TextEditingController();

  @override
  void initState() {
    super.initState();
    username.text = '初始值';
    _password.text='';
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
            TextField(
              controller: username,
              onChanged: (value){
                setState(() {
                  username.text=value;
                });
                },
              decoration: InputDecoration(hintText: '请输入用户名'),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller:_password,
              obscureText: true,
              onChanged: (value){
                setState(() {
                  _password.text=value;
                });
                },
              decoration: InputDecoration(hintText: '请输入密码'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,//自适应的container
              height: 40,
              child: RaisedButton(
                child: Text('登陆'),
                onPressed: () {
                  print('用户名：${this.username.text},密码：${this._password.text}');
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FliedDemo extends StatelessWidget {
  FliedDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
                border: OutlineInputBorder() //表单加边框
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
                border: OutlineInputBorder() //表单加边框
                ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            //maxlength最大字数
            obscureText: true,
            decoration: InputDecoration(
              //修饰表单元素  类似于placeholder
              hintText: '密码框',
              icon: Icon(Icons.people),
              labelText: '密码', //顶部提示
//              border: OutlineInputBorder()//表单加边框
            ),
          ),
        ],
      ),
    );
  }
}
