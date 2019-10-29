import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  @override
  _FormDemoPageState createState() {
    return _FormDemoPageState();
  }
}

class _FormDemoPageState extends State<FormDemoPage> {
  String uname;
  String info = '';
  int sex = 1;
  List habbies = [
    {'checked': true, 'title': '吃饭'},
    {'checked': false, 'title': '睡觉'},
    {'checked': true, 'title': '写代码'},
  ];

  void _setSexChanged(val) {
    setState(() {
      this.sex = val;
    });
  }

  List<Widget> _getHobby() {
    List<Widget> _list = [];
    for (var i = 0; i < this.habbies.length; i++) {
      _list.add(Row(
        children: <Widget>[
          Text(this.habbies[i]['title']),
          Checkbox(
            value: this.habbies[i]['checked'],
            onChanged: (value) {
              setState(() {
                this.habbies[i]['checked'] = value;
              });
            },
          )
        ],
      ));
    }
    return _list;
  }

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
        title: Text('学员信息登记'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: '输入用户信息'),
              onChanged: (val) {
                setState(() {
                  this.uname = val;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('男'),
                Radio(
                  activeColor: Colors.red,
                  value: 1,
                  onChanged: _setSexChanged,
                  groupValue: this.sex,
                ),
                SizedBox(
                  width: 20,
                ),
                Text('女'),
                Radio(
                  activeColor: Colors.red,
                  value: 2,
                  onChanged: _setSexChanged,
                  groupValue: this.sex,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: this._getHobby(),
            ),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: '文本域',
                  border: OutlineInputBorder(),
//                  labelText: '文本'),
              ),
              onChanged: (value) {
                setState(() {
                  this.info = value;
                });
              },
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('提交'),
                    onPressed: () {
                      print('${uname}----${sex}--${this.habbies}');
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
