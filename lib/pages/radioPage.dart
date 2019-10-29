import 'package:flutter/material.dart';

class RadioDemoPage extends StatefulWidget {
  RadioDemoPage({Key key}) : super(key: key);

  @override
  _RadioDemoPageState createState() {
    return _RadioDemoPageState();
  }
}

class _RadioDemoPageState extends State<RadioDemoPage> {
  int sex = 1;
  bool flag=true;
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
          title: Text('radio组件'),
        ),
        body: Column(
          children: <Widget>[
//            Row(
//              children: <Widget>[
//                Text('男'),
//                Radio(
//                  value: 1,
//                  onChanged: (value) {
//                    setState(() {
//                      this.sex = value;
//                    });
//                  },
//                  groupValue: this.sex,
//                ),
//                SizedBox(width: 10,),
//                Text('女'),
//                Radio(
//                  value: 2,
//                  onChanged: (value) {
//                    setState(() {
//                      this.sex = value;
//                    });
//                  },
//                  groupValue: this.sex,
//                ),
//              ],
//            ),
//            Row(
//              children: <Widget>[
//                Text('${this.sex==1?'男':'女'}')
//              ],
//            ),
            SizedBox(height: 40,),
            RadioListTile(
              title: Text('标题'),
              subtitle: Text('副镖头'),
              secondary: Icon(Icons.access_alarms),
              value: 1,
              selected: this.sex==1,
              onChanged: (value){
                setState(() {
                  this.sex=value;
                });
              },
              groupValue: this.sex,
            ), RadioListTile(
              title: Text('标题'),
              subtitle: Text('副镖头'),
              secondary: Icon(Icons.access_alarms),//图标和图片都可以
              value: 2,
              selected: this.sex==2,
              onChanged: (value){
                setState(() {
                  this.sex=value;
                });
              },
              groupValue: this.sex,
            ),
            SizedBox(
              height: 20,
            ),
            Switch(
              value: this.flag,
              onChanged: (v){
                setState(() {
                  this.flag=v;
                });
              },
            )

          ],
        ));
  }
}
